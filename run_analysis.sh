#!/bin/bash

# Set default values for environment variables if not already set
export SONAR_PROJECT_KEY=${SONAR_PROJECT_KEY:-my-project}
export SONAR_HOST_URL=${SONAR_HOST_URL:-http://localhost:9000}
export SONAR_LOGIN=${SONAR_LOGIN}

# Check if SONAR_LOGIN is set
if [ -z "$SONAR_LOGIN" ]; then
  echo "Error: SONAR_LOGIN environment variable is not set."
  echo "Please set SONAR_LOGIN to your SonarQube user token or password."
  exit 1
fi

docker compose run --rm \
  -e SONAR_PROJECT_KEY="$SONAR_PROJECT_KEY" \
  -e SONAR_HOST_URL="$SONAR_HOST_URL" \
  -e SONAR_LOGIN="$SONAR_LOGIN" \
  sonarscanner