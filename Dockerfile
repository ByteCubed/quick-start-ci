FROM openjdk:11-jdk-slim

RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    maven \
    && rm -rf /var/lib/apt/lists/*

ENV TERRAFORM_VERSION=0.11.11

COPY ./terraform-install.sh /root/terraform-install.sh

RUN /root/terraform-install.sh -i ${TERRAFORM_VERSION}
