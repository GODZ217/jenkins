FROM ubi8-openjdk-11:1.3
WORKDIR /app

COPY target/hello-0.0.1-SNAPSHOT.jar .

ENV TZ="Asia/Jakarta"
RUN date

EXPOSE 8182
CMD ["java", "-Xms256m", "-Xmx512m", "-jar", "-Dserver.port=8182", "hello-0.0.1-SNAPSHOT.jar", "--server.servlet.context-path=/java"]
