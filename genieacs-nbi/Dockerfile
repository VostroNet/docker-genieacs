FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

ENV GENIEACS_NBI_ACCESS_LOG_FILE=/var/log/nbi-access.log

EXPOSE 7557
ENTRYPOINT ["/opt/genieacs/dist/bin/genieacs-nbi"]