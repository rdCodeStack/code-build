FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /temp
EXPOSE 8080
ADD target/merck-demo-deploy.jar merck-demo-deploy.jar
ENTRYPOINT ["java", "-jar", "merck-demo-deploy.jar"]