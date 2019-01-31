# docker-vue-cli

Docker image for [VUEPRESS](https://vuepress.vuejs.org/) to use as build container.

Image on dockerhub: [https://hub.docker.com/r/crowdcode/vuepress/](https://hub.docker.com/r/crowdcode/vuepress/)

Project on Github: [https://github.com/crowdcode-de/docker-vuepress-cli](https://github.com/crowdcode-de/docker-vuepress-cli)

Currently, this image uses node v11.7.0 (npm 6.5.0), vue-cli 3.3.0, vuepress and Debian stretch as base distribution.

## Example usage

Create a markdown file:

```
echo '# Hello VuePress' > README.md
```

Start vuepress development server:

```
docker run -it --rm -p 8080:8080 -p 8081:8081 -v "$PWD":/workspace crowdcode/vuepress vuepress dev
```

Start writing your content and have a look on [http://localhost:8080](http://localhost:8080). The Port 8081 is used for hot reload after you changed a file.


Build to static files with:

```
docker run -it --rm -p 8080:8080 -v "$PWD":/workspace crowdcode/vuepress vuepress build
```

