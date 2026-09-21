import os

# Define file paths
workflow_dir = os.path.join(".github", "workflows")
workflow_file = os.path.join(workflow_dir, "python-app.yml")
sonar_file = "sonar-project.properties"
coverage_file = ".coveragerc"
readme_file = "README.md"

# 1. Content for README.md
readme_content = """# Overview

This is a simple demo project to highlight the analysis of Python on SonarCloud.

## Running the webapp

Python 3 and flask need to be installed in the environment. You can run the following command to install the required dependencies:

```pip install -r requirements.txt```

- Initialize the database with `python init_db.py` (optional: a `database.db` file is already committed in the repository)
- `cd pokedex` and then simply run the webapp with `flask run`

# Sonar Workshop

We're going to set up a SonarCloud analysis on this project. We'll visualise issues on the main branch and on pull requests and see how PRs get decorated automatically.

We'll then set up a CI-based analysis and import code coverage information into the SonarCloud UI.

Useful link: https://sonarcloud.io

## Getting started

- Fork this repository.
- A basic workflow which will act as our CI already exists in `.github/workflows/python-app.yml`. It is disabled by default. Go to `Actions` and enable GitHub Actions to activate it.
- Go to `Pull requests->New pull request` and open a pull request from the `add-feature` branch to the `main` branch of your fork. Be careful that, by default, the PR targets the upstream repository.
- The GitHub Action should run and succeed.
"""

# 2. Content for .github/workflows/python-app.yml
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

# 3. Content for sonar-project.properties
sonar_content = """sonar.projectKey=AnticipatedD_openproject
sonar.organization=anticipatedd

sonar.sources=pokedex
sonar.tests=tests
sonar.python.coverage.reportPaths=cov.xml
sonar.python.flake8.reportPaths=flake8report.txt
"""

# 4. Content for .coveragerc
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

    # Write README.md file
    with open(readme_file, "w", encoding="utf-8") as f:
        f.write(readme_content)
    print(f"[✔] Created file: {readme_file}")

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
    print("All files generated locally! Next setup steps:")
    print("1. Open your terminal.")
    print("2. Run: git add .")
    print("3. Run: git commit -m \\"ci: update README and setup SonarQube pipeline\\"")
    print("4. Run: git push origin main")
    print("========================================================")

if __name__ == "__main__":
    main()
```

### Quick Git Instructions to get started:
If you haven't brought the code down to your computer yet, run this in your terminal window first to link your project:
```bash
git clone https://github.com
cd openproject
```
*(Note: Be sure your target repository folder uses the singular name `openproject` matching your workspace profile configuration to avoid endpoint routing drops).*

<FollowUp>
Would you like me to inject **automatic execution code** directly into the Python script so that it runs your terminal `git push` updates completely hands-free?
</FollowUp>
