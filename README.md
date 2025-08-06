# SonarQube Analysis with Docker Compose

This repository provides a setup to run SonarQube analysis for your projects using Docker Compose.

## Configuration

The SonarQube analysis can be configured using environment variables. This allows you to easily switch between different projects and SonarQube instances without modifying the scripts.

### Required Environment Variables

* `SONAR_PROJECT_KEY`: The unique key for your project in SonarQube. This identifies your project.
* `SONAR_LOGIN`: Your SonarQube user token or password. This is required for authentication with the SonarQube server.

### Optional Environment Variables

* `SONAR_HOST_URL`: The URL of your SonarQube server. Defaults to `http://localhost:9000` if not set.

### How to Run the Analysis

1. **Set the environment variables** (replace with your actual values):

    ```bash
    export SONAR_PROJECT_KEY="your-project-key"
    export SONAR_LOGIN="your-sonar-login-token"
    # Optional: If your SonarQube is not on localhost:9000
    # export SONAR_HOST_URL="http://your-sonarqube-host:9000"
    ```

    It's recommended to add these `export` commands to your shell's profile file (e.g., `.bashrc`, `.zshrc`) or a dedicated script for your CI/CD pipeline.

2. **Run the analysis script**:

    ```bash
    ./run_analysis.sh
    ```

This will start the SonarQube server (if not already running) and then execute the SonarScanner to analyze your project.

