FROM alpine

RUN apk add --no-cache \
    fio \
    sudo \
    lsblk \
    util-linux \
    procps


COPY ./rand-rw.fio /

WORKDIR /data

ENTRYPOINT [ "fio", "/rand-rw.fio" ]
