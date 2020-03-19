# step1
FROM alpine

#step2: Install a software

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/main" >> /etc/apk/repositories

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community" >> /etc/apk/repositories

RUN apk update
RUN apk add mongodb=3.4.4-r0

#step2.5: Configure that software

VOLUME [ "/data/db" ]
WORKDIR /data
EXPOSE 27017

#step3 : set default commands

CMD ["mongod"]