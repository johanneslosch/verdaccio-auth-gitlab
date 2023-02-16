FROM verdaccio/verdaccio:5.21.1
LABEL maintainer="https://github.com/johanneslosch/verdaccio-auth-gitlab"

USER root

RUN  npm install --global verdaccio-auth-gitlab

WORKDIR $VERDACCIO_APPDIR
RUN ln -s /opt/verdaccio-gitlab/build /verdaccio/plugins/verdaccio-gitlab

USER $VERDACCIO_USER_UID
