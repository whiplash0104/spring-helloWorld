FROM adoptopenjdk/openjdk11:alpine-jre

ARG JAR_FILE=target/hello-OKE-springboot-1.0.0.jar
WORKDIR /opt/app

COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
