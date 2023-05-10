#!/bin/bash

# Set up any required environment variables or configurations for your build
# For example, you might need to specify the JDK version or other build parameters.
export JAVA_HOME=/path/to/your/jdk

# Build Kafka using Maven
./gradlew clean releaseTarGz -Psigning.enabled=false -DskipTests

# Replace the above line with the appropriate build command for the Kafka project.
# The provided command uses Gradle Wrapper (`./gradlew`) to invoke the build.
# We use the `clean` task to ensure a clean build, `releaseTarGz` to create the tarball distribution,
# and `-Psigning.enabled=false` to disable signing (as an example, you can remove this if you want to enable signing).
# The `-DskipTests` parameter skips running the tests during the build. You can remove it if you want to include tests.

# After the build completes, the Kafka distribution artifacts will be available in the 'target' directory or as specified by the build configuration.
