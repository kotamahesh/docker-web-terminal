FROM ubuntu:16.04
USER root
EXPOSE 5000
ADD *.json index.* ./
RUN apt-get  update \
    && apt-get -y install git curl build-essential \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash -  \
    && apt-get -y install  nodejs \
    && npm install \
    && node_modules/.bin/bower install --allow-root \
    && apt-get -y autoremove build-essential \
    && apt-get  clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/archives/*
CMD npm start
