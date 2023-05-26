#!/usr/bin/env bash
#java -javaagent:opentelemetry-javaagent-all.jar -Xmx2048m -Xms1024m -XX:MetaspaceSize=150m -XX:MaxMetaspaceSize=300m -jar /home/runtime/run.jar
java -Xmx1024m -Xms1024m -XX:MetaspaceSize=150m -XX:MaxMetaspaceSize=300m -jar /home/runtime/run.jar