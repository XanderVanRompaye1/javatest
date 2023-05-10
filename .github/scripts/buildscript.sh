#!/bin/bash

# Set up any required environment variables or configurations for your build
export JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64

# Verify the JAVA_HOME variable is correctly set
if [ ! -d "$JAVA_HOME" ]; then
  echo "Error: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
  echo "Please set the JAVA_HOME variable in your environment to match the location of your Java installation."
  exit 1
fi

# Build the Kafka JAR
./gradlew jar

# Replace the above line with the appropriate build command for the Kafka project.
# Make sure to run the build command from the root directory of the Kafka project.

# After the build completes, the Kafka JAR file will be available in the 'core/build/libs' directory or as specified by the build configuration.
