FROM openjdk:14-alpine
COPY target/security-*.jar security.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "security.jar"]