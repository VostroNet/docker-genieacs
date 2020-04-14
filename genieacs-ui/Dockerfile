FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

RUN ln -s /opt/genieacs/dist/bin/genieacs-ui /usr/bin/genieacs-ui
ENV JWTSECRET="secret"

EXPOSE 3000
ENTRYPOINT ["/usr/bin/genieacs-ui --ui-jwt-secret $JWTSECRET"]