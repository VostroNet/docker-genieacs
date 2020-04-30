FROM mxhob1/genieacs:base
LABEL MAINTAINER="Michael Hobl <michael+docker@hobl.com.au>"

ENV GENIEACS_UI_ACCESS_LOG_FILE=/var/log/genieacs/ui-access.log
ENV JWTSECRET="secret"

EXPOSE 3000
ENTRYPOINT [ "sh", "-c", "/opt/genieacs/dist/bin/genieacs-ui --ui-jwt-secret $JWTSECRET"]