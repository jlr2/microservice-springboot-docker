FROM openjdk:8
RUN apt update && apt install -y nano && apt install -y openssh-server && apt install -y wget
EXPOSE 8080
ENTRYPOINT["service","ssh","start"]