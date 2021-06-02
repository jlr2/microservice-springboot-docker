FROM openjdk:8
RUN apt update && apt install -y nano && apt install -y openssh-server && apt install -y wget
EXPOSE 8080
ADD microservicio.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
