FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-fs /usr/bin/genieacs-fs

EXPOSE 7567
ENTRYPOINT ["/usr/bin/genieacs-fs"]