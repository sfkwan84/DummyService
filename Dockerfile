FROM node:4-alpine
MAINTAINER sfkwan

ENV http_proxy 'http://web-proxy.sgp.hp.com:8080'

ADD package.json /
RUN npm install

ADD app.js /

EXPOSE 8080

ENTRYPOINT ["node","app.js"]
