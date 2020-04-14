FROM node:12-alpine as builder
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

RUN apk update && \
    apk add --no-cache \
      git \
      build-base \
      python3

RUN git clone https://github.com/genieacs/genieacs.git /install

WORKDIR /install

RUN npm install && \
    npm run build

FROM node:12-alpine as main

COPY --from=builder /install /opt/genieacs

WORKDIR /opt/genieacs

RUN apk add --no-cache \
      coreutils
RUN mkdir -p /opt/genieacs/config

VOLUME ["/var/log"]