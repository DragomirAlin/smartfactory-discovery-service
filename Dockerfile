FROM openjdk:latest
 
COPY target/*.jar /srv/
COPY src/main/resources/application-dev.yml /srv/config/

EXPOSE 8761

ENTRYPOINT ["java","-jar","/srv/discovery-0.0.1-SNAPSHOT.jar", "--spring.config.location=file:/srv/config/application-dev.yml"]

