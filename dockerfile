FROM openjdk:17-jdk-slim

LABEL autor=anpm006

WORKDIR /var/bot/

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install maven -y
RUN git clone https://github.com/znakar/See
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN chmod -R 777 /var/bot/See

ENV OWNER=anpm006
ENV TYPE=demo