FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-nbi /usr/bin/genieacs-nbi

EXPOSE 7557
ENTRYPOINT ["/usr/bin/genieacs-nbi"]