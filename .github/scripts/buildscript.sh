#!/bin/bash

# Find the Java installation path on Ubuntu
JAVA_HOME=$(update-alternatives --query java | grep 'Value:' | grep -o '/.*/bin')

# Verify the JAVA_HOME variable is correctly set
if [ ! -d "$JAVA_HOME" ]; then
  echo "Error: Unable to find Java installation path."
  echo "Please ensure Java is installed and configured correctly."
  exit 1
fi

# Build Kafka using Maven
./gradlew clean releaseTarGz -Psigning.enabled=false -DskipTests

# Replace the above line with the appropriate build command for the Kafka project.

# After the build completes, the Kafka distribution artifacts will be available in the 'target' directory or as specified by the build configuration.
