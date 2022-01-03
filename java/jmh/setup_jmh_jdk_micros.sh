#!/bin/bash

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

echo "To view the JMH JDK benchmarks, run this command:"
echo "java -jar jmh-jdk-microbenchmarks/micros-uber/target/micros-uberpackage-1.0-SNAPSHOT.jar -l"
