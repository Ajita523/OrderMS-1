FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/OrderDetailsMS-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8500
ENV JAVA_OPTS=""
RUN sh -c "touch OrderDetailsMS-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "OrderDetailsMS-0.0.1-SNAPSHOT.jar" ]
