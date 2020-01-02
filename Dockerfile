FROM openjdk:8-alpine
RUN apk --update add wget tar bash
RUN wget http://apache.mirror.digionline.de/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
RUN tar -xzf spark-2.4.4-bin-hadoop2.7.tgz && \
    mv spark-2.4.4-bin-hadoop2.7 /spark && \
    rm spark-2.4.4-bin-hadoop2.7.tgz
COPY ./spark-master.sh /start-master.sh
COPY ./spark-worker.sh /start-worker.sh
