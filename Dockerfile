## Build Stage
ARG FROM=node:12-alpine
FROM ${FROM} as builder

RUN apk update && \
    apk add --no-cache \
      git \
      build-base \
      python3

RUN git clone https://github.com/genieacs/genieacs.git /install

WORKDIR /install

RUN npm install && \
    npm run build

## Main Stage   
ARG FROM
FROM ${FROM} as main

COPY --from=builder /install /opt/genieacs

WORKDIR /opt/genieacs

RUN apk add --no-cache \
      coreutils
RUN mkdir -p /opt/genieacs/config

RUN ln -s /opt/genieacs/dist/bin/genieacs-cwmp /usr/bin/genieacs-cwmp && \
    ln -s /opt/genieacs/dist/bin/genieacs-fs /usr/bin/genieacs-fs && \
    ln -s /opt/genieacs/dist/bin/genieacs-nbi /usr/bin/genieacs-nbi && \
    ln -s /opt/genieacs/dist/bin/genieacs-ui /usr/bin/genieacs-ui