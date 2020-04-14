FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-cwmp /usr/bin/genieacs-cwmp
ENV GENIEACS_CWMP_ACCESS_LOG_FILE=/var/log/cwmp-access.log

EXPOSE 7547
ENTRYPOINT ["/usr/bin/genieacs-cwmp"]