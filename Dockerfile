FROM node:14-alpine

RUN apk add --no-cache coreutils && npm install -g --unsafe-perm genieacs@1.2.3

RUN mkdir -p /app/config && mkdir -p /app/ext && mkdir -p /app/logs

RUN addgroup -S genieacs && adduser -S genieacs -G genieacs \
  && chown -R genieacs:genieacs /app

ENV GENIEACS_EXT_DIR=/app/ext
ENV GENIEACS_UI_JWT_SECRET=secret
ENV GENIEACS_MONGODB_CONNECTION_URL=mongodb://mongo/genieacs

ENV GENIEACS_CWMP_WORKER_PROCESSES=1
ENV GENIEACS_NBI_WORKER_PROCESSES=1
ENV GENIEACS_FS_WORKER_PROCESSES=1
ENV GENIEACS_UI_WORKER_PROCESSES=1

# USER genieacs

WORKDIR /app



