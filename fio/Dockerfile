FROM alpine

RUN apk add --no-cache \
    fio \
    sudo \
    lsblk \
    util-linux \
    procps \
    bash


COPY ./rand-rw.fio /

WORKDIR /data

CMD [ "/usr/bin/fio", "/rand-rw.fio" ]
