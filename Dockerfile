FROM frolvlad/alpine-python3
MAINTAINER ponteineptique <thibault.clerice[@]uni-leipzig.de>

# Install required packages
RUN apk add --no-cache git && pip install cookiecutter

# Sets up locales to avoid decode issue in python
ENV LANG C.UTF-8

ADD guideline-maker /bin/guidelinemaker
RUN chmod +x /bin/guideline-maker

WORKDIR /data/
VOLUME /code/

CMD ["cookiecutter", "https://github.com/Capitains/cookiecutter-guidelines"]