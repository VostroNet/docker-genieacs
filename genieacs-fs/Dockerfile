FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

ENV GENIEACS_FS_ACCESS_LOG_FILE=/var/log/genieacs/fs-access.log

EXPOSE 7567
ENTRYPOINT ["/opt/genieacs/dist/bin/genieacs-fs"]