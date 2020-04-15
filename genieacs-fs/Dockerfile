FROM vostro/genieacs:base
LABEL MAINTAINER="Michael Hobl <mhobl@vostronet.com>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-fs /usr/bin/genieacs-fs
ENV GENIEACS_FS_ACCESS_LOG_FILE=/var/log/fs-access.log

EXPOSE 7567
ENTRYPOINT ["/usr/bin/genieacs-fs"]