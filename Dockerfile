FROM openjdk:8
RUN mkdir /home/runtime
WORKDIR /home/runtime
COPY  ./target/*.jar ./run.jar
COPY  ./startup.sh ./startup.sh
CMD sh /home/runtime/startup.sh
EXPOSE 8080