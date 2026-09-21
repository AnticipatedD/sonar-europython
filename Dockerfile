# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Install Node.js and npm for package execution verification
RUN apt-get update && apt-get install -y \
    curl \
    && curl -fsSL https://nodesource.com | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy dependency configuration manifests
COPY package.json package-lock.json* requirements.txt* ./

# Install project dependencies for both ecosystems
RUN npm ci || npm install
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi \
    && pip install --no-cache-dir pytest pytest-cov flake8

# Copy the rest of the application codebase
COPY . .

# Set default command to execute the testing workflows
CMD ["sh", "-c", "npm test && pytest"]
