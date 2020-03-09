FROM openjdk:8-jdk-alpine

VOLUME /tmp
COPY UnlimitedJCEPolicyJDK8/* /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
ADD target/ConfigServer-0.0.1-SNAPSHOT.jar config-server-service.jar
RUN sh -c 'touch /config-server-service.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/config-server-service.jar"]