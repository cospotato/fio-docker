FROM alpine:3.14

RUN apk add --no-cache fio==3.27-r0

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
