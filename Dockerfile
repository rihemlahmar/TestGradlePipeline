FROM openjdk:21-jdk
MAINTAINER BePrimeTech <contact@beprimetech.com>
ADD build/* TestGradlePipeline.jar
ENTRYPOINT ["java", "-XX:+HeapDumpOnOutOfMemoryError", "-XX:HeapDumpPath=/tmp/dumps", "-jar","-Dspring.profiles.active=prod", "/TestGradlePipeline.jar"]
EXPOSE 9096
