#!/usr/bin/env bash

cd fio
docker build -t mwvaughn/fio . && docker push mwvaughn/fio
