#!/bin/bash

# This script depends on Maven. To install Maven on Ubuntu, run:
#
#   sudo apt install maven
#

mkdir -p applogs

if [ ! -d "jmh-jdk-microbenchmarks" ]; then
    git clone https://github.com/openjdk/jmh-jdk-microbenchmarks
    cd jmh-jdk-microbenchmarks

    echo "Building JMH JDK Microbenchmarks"
    mvn clean install
    cd ..
else
    echo "Found existing jmh-jdk-microbenchmarks directory."
    echo "Skipping jmh-jdk-microbenchmarks setup."
fi

echo -e "\nTo view the JMH JDK benchmarks, run:\n"
echo -e " java -jar jmh-jdk-microbenchmarks/micros-uber/target/micros-uberpackage-1.0-SNAPSHOT.jar -l\n"

echo -e "For a list of JMH command-line options, run:\n"
echo " java -jar jmh-jdk-microbenchmarks/micros-uber/target/micros-uberpackage-1.0-SNAPSHOT.jar -h"
