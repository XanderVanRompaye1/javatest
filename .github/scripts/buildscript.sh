#!/bin/bash

# Set up any required environment variables or configurations for your build
export JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64

# Verify the JAVA_HOME variable is correctly set
if [ ! -d "$JAVA_HOME" ]; then
  echo "Error: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
  echo "Please set the JAVA_HOME variable in your environment to match the location of your Java installation."
  exit 1
fi

# Build Kafka using Maven
cd kafka_source_dir
gradle
./gradlew jar
./gradlew srcJar
./gradlew aggregatedJavadoc
./gradlew javadoc
./gradlew javadocJar # builds a javadoc jar for each module
./gradlew scaladoc
./gradlew scaladocJar # builds a scaladoc jar for each module
./gradlew docsJar # builds both (if applicable) javadoc and scaladoc jars for each module
./gradlew installAll
./gradlew testJar
# Replace the above line with the appropriate build command for the Kafka project.

# After the build completes, the Kafka distribution artifacts will be available in the 'target' directory or as specified by the build configuration.
