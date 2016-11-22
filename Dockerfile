FROM node:4-alpine
MAINTAINER sfkwan

ADD app.js /

EXPOSE 8080

ENTRYPOINT ["node","app.js"]
