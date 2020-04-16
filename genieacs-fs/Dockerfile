FROM vostro/genieacs:base
LABEL MAINTAINER="Michael Hobl <mhobl@vostronet.com>"

ENV GENIEACS_FS_ACCESS_LOG_FILE=/var/log/fs-access.log

EXPOSE 7567
ENTRYPOINT ["/opt/genieacs/dist/bin/genieacs-fs"]