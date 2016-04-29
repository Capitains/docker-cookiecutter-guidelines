docker-cookiecutter-guidelines
================================

[![Docker Stars](https://img.shields.io/docker/stars/capitains/cookiecutter-guidelines.svg?maxAge=86400)](https://hub.docker.com/r/capitains/cookiecutter-guidelines/tags/) 
[![Docker Pulls](https://img.shields.io/docker/pulls/capitains/cookiecutter-guidelines.svg?maxAge=86400)](https://hub.docker.com/r/capitains/cookiecutter-guidelines/tags/)

Docker Image for CookieCutter guidelines. Allows you to generate your first directories for CapiTainS guidelines as well as a skeletton for your XML.

## Docker basics commands and vocabulary

- **Image** : A docker image is a skeletton for running software without having to install anything except docker. It's a specific state of a container. 
- **Container** : A container is an instance, a running application, of a docker image.
- **Local Build of  the image** (**advanced users only**)
	- User `docker build .` in this directory

## Creating a container
	
**Before starting**

- Replace /path/to/ by your own absolute path to given directory.
- If you used a local build, *save the hash* given at the end of the build (such as `475d347abade`). If you do not understand this sentence, do not worry, docker will download the latest version of the source image.

**Guide**

- **First run** `docker run -i --name cookiecutter-guidelines -v /path/to/work/folder:/code capitains/cookiecutter-guideline:latest` will run and pull the docker instance
	- `-v /first/path:/second/path` creates a data volumes and forwards `/first/path` (on your machine) to `/second/path` (on the docker container). We use it to save the output on your host machine
	- `--name cookiecutter-guidelines` names your cookiecutter-guidelines capitains. If you want to have multiple containers, change the name.
- **Second run** `docker run -i --name cookiecutter-guidelines`