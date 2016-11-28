FROM node:4-alpine
MAINTAINER sfkwan

ADD package.json
RUN npm install

ADD app.js /

EXPOSE 8080

ENTRYPOINT ["node","app.js"]
