FROM alpine
MAINTAINER sfkwan
RUN apk update
RUN apk add nodejs

ADD app.js /

EXPOSE 8080

ENTRYPOINT ["node","app.js"]
