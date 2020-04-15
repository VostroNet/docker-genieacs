FROM vostro/genieacs:base
LABEL MAINTAINER="Michael Hobl <mhobl@vostronet.com>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-nbi /usr/bin/genieacs-nbi
ENV GENIEACS_NBI_ACCESS_LOG_FILE=/var/log/nbi-access.log

EXPOSE 7557
ENTRYPOINT ["/usr/bin/genieacs-nbi"]