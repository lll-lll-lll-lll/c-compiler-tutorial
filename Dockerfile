
FROM ubuntu:latest

WORKDIR /root

RUN apt-get update && apt-get install -y \
  vim \
  gcc \
  g++ \