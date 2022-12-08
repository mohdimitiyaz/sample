FROM openjdk:11-jdk-slim as build

#Information around who maintains the image
MAINTAINER nisum.com

# Add the application's jar to the container
ADD build/libs/pricing-pod-poc-0.0.1-SNAPSHOT.jar pricing-pod-poc-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","/pricing-pod-poc-0.0.1-SNAPSHOT.jar"]