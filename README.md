# docker-vue-cli

Docker image for [VUEPRESS](https://vuepress.vuejs.org/) to use as build container.

Image on dockerhub: https://hub.docker.com/r/crowdcode/vuepress/

Currently, this image uses node v11.7.0 (npm 6.5.0), vue-cli 3.3.0, vuepress and Debian stretch as base distribution.

## Example Usage

```
docker run -it --rm -p 8080:8080 -v "$PWD":/workspace crowdcode/vuepress vuepress dev
```
