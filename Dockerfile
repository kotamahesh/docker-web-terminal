FROM node:0.10.30
MAINTAINER Vangie Du from Coding IDE Team <duwan@coding.net>

EXPOSE 5000

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]
