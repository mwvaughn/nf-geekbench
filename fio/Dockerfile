FROM ubuntu:bionic

RUN apt-get -y update && \
    apt-get -y install fio \
    util-linux \
    procps && \
    apt-get -y clean

COPY ./rand-rw.fio /

CMD [ "/usr/bin/fio", "/rand-rw.fio" ]
