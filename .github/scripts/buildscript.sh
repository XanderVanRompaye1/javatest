#!/bin/bash

# Set up any required environment variables or configurations for your build
export JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64

# Verify the JAVA_HOME variable is correctly set
if [ ! -d "$JAVA_HOME" ]; then
  echo "Error: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
  echo "Please set the JAVA_HOME variable in your environment to match the location of your Java installation."
  exit 1
fi

# Generate the Gradle wrapper files if they don't exist
if [ ! -f "gradlew" ]; then
  echo "Gradle wrapper files not found. Generating..."
  gradle wrapper
fi

# Build the project using the Gradle wrapper
./gradlew build

# After the build completes, you can perform any additional steps or tasks as needed.
