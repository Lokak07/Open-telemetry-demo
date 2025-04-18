FROM eclipse-temurin:21-jdk AS builder

WORKDIR /usr/src/app/

# Install required tools
RUN apt-get update && apt-get install -y wget unzip curl && rm -rf /var/lib/apt/lists/*

# Install grpc-java plugin (needs to match version in build.gradle)
RUN wget https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.71.0/protoc-gen-grpc-java-1.71.0-linux-x86_64.exe -O /usr/local/bin/protoc-gen-grpc-java \
    && chmod +x /usr/local/bin/protoc-gen-grpc-java

COPY gradlew* settings.gradle* build.gradle ./
COPY ./gradle ./gradle

RUN chmod +x ./gradlew
RUN ./gradlew
RUN ./gradlew downloadRepos

COPY . ./
COPY ./pb ./proto
RUN chmod +x ./gradlew

# Set plugin path via gradle property
RUN ./gradlew installDist -PprotoSourceDir=./proto -Dprotoc-gen-grpc-java.path=/usr/local/bin/protoc-gen-grpc-java

# Slim Alpine Runtime
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=builder /usr/src/app/build/install/opentelemetry-demo-ad /app

ENV AD_PORT=9099 
EXPOSE 9099

ENTRYPOINT ["/app/bin/Ad"]
