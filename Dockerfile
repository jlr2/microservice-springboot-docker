FROM openjdk:8
EXPOSE 8080
ADD micro-service-spring-boot-1.0.jar app.jar
# PTE REVISAR: la idea es que el plugin de maven incluye el fichero jar y ahora
# se renombra a app.jar
#RUN mv /micro-service-spring-boot-* app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]