FROM alpine

RUN apk add --no-cache \
    fio \
    sudo \
    lsblk \
    util-linux \
    procps


COPY ./rand-rw.fio /

WORKDIR /data

CMD [ "fio", "/rand-rw.fio" ]
