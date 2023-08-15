FROM ubi8-openjdk-11:1.3
WORKDIR /app

COPY /target/.jar ./app.jar

ENV TZ="Asia/Jakarta"
RUN date

EXPOSE 8182
CMD ["java","-Xms256m","-Xmx512m","-jar", "-Dserver.port=8182","app.jar", "--server.servlet.context-path=/java"]
