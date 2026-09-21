import os

# Define file paths
workflow_dir = os.path.join(".github", "workflows")
workflow_file = os.path.join(workflow_dir, "python-app.yml")
sonar_file = "sonar-project.properties"
coverage_file = ".coveragerc"

# 1. Content for .github/workflows/python-app.yml
workflow_content = """name: Python application

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

permissions:
  contents: read

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
      with:
        fetch-depth: 0
        
    - name: Set up Python 3.10
      uses: actions/setup-python@v3
      with:
        python-version: "3.10"
        
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install flake8 pytest pytest-cov
        if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
        
    - name: Lint with flake8
      run: |
        flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
        flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --output-file=flake8report.txt --statistics
        
    - name: Test with pytest
      run: |
        pytest --cov --cov-report xml:cov.xml --cov-config=.coveragerc
        
    - name: SonarCloud Scan
      uses: SonarSource/sonarcloud-github-action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
"""

# 2. Content for sonar-project.properties
sonar_content = """sonar.projectKey=AnticipatedD_openproject
sonar.organization=anticipatedd

sonar.sources=pokedex
sonar.tests=tests
sonar.python.coverage.reportPaths=cov.xml
sonar.python.flake8.reportPaths=flake8report.txt
"""

# 3. Content for .coveragerc
coverage_content = """[run]
source = pokedex
branch = True
relative_files = True
"""

def main():
    # Create workflow directories if they don't exist
    if not os.path.exists(workflow_dir):
        os.makedirs(workflow_dir)
        print(f"[✔] Created directory: {workflow_dir}")

    # Write GitHub Actions Workflow file
    with open(workflow_file, "w", encoding="utf-8") as f:
        f.write(workflow_content)
    print(f"[✔] Created file: {workflow_file}")

    # Write Sonar Project Properties file
    with open(sonar_file, "w", encoding="utf-8") as f:
        f.write(sonar_content)
    print(f"[✔] Created file: {sonar_file}")

    # Write Coverage Configuration file
    with open(coverage_file, "w", encoding="utf-8") as f:
        f.write(coverage_content)
    print(f"[✔] Created file: {coverage_file}")

    print("\\n========================================================")
    print("All files generated! Run these commands next:")
    print("git add .")
    print("git commit -m \\"ci: integrate SonarQube Cloud pipeline\\"")
    print("git push origin main")
    print("========================================================")

if __name__ == "__main__":
    main()
