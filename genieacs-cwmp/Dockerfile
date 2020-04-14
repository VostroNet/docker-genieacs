FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-cwmp /usr/bin/genieacs-cwmp

EXPOSE 7547
ENTRYPOINT ["/usr/bin/genieacs-cwmp"]