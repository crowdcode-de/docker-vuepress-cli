#!/bin/sh
# Build a docker image containing node, npm, vue-cli, and vuepress
# Set the required vuepress version
VUEPRESS_VERSION='next'
docker build -t "crowdcode/vuepress-cli:${VUEPRESS_VERSION}" --build-arg VUEPRESS_VERSION=${VUEPRESS_VERSION} .
