FROM ubuntu:16.04
MAINTAINER Vangie Du from Coding IDE Team <duwan@coding.net>
EXPOSE 5000
ADD *.json index.* ./
RUN apt-get  update \
    && apt-get -y install  curl   build-essential \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash -  \
    && apt-get -y install  nodejs \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/archives/*
RUN npm install && node_modules/.bin/bower install --allow-root

CMD npm start
