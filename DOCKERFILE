FROM alpine:3.9

RUN apk --no-cache add \
    bash \
    unzip \
    curl \
    openjdk8 \
    maven

ENV TERRAFORM_VERSION=0.11.11

COPY ./terraform-install.sh /root/terraform-install.sh

RUN /root/terraform-install.sh -i ${TERRAFORM_VERSION}
