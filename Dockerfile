# simple vue-cli docker installation
# docker build -t vuepress
# or specify vuepresscd wo version
# build --build-arg VUEPRESS_VERSION= .

FROM crowdcode/vue-cli:latest

# alternative to reduce size instead of alpine, but does not
# include build tools for native compilation of npm packages
# FROM node:8-slim

LABEL maintainer="development@crowdcode.io" \
      description="Simple vuepress docker container"

ARG VUEPRESS_VERSION=0.14.8
ENV VUEPRESS_VERSION ${VUEPRESS_VERSION}
ARG USER_ID=1000
ARG USER_HOME_DIR="/build"
ARG WORKSPACE_DIR="/workspace"

ENV NPM_CONFIG_LOGLEVEL info
ENV HOME "$USER_HOME_DIR"

RUN set -xe \
    && env \ 
    &&  (cd "$USER_HOME_DIR"; su node -c "npm install -g vuepress@${VUEPRESS_VERSION}; npm install -g yarn; chmod +x /usr/local/bin/yarn; npm cache clean --force")


# not declared to avoid anonymous volume leak
# VOLUME "$USER_HOME_DIR/.cache/yarn"
# VOLUME "$APP_DIR/"
#WORKDIR $WORKSPACE_DIR

EXPOSE 8080
 
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

USER ${USER_ID}