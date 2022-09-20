#!/usr/bin/env bash

for G in 5 6
    do
    for I in c r m
    do
        QUEUE="${I}${G}"
        echo ${QUEUE}
        nextflow run -bg \
            -profile ${QUEUE} \
            -with-report ${QUEUE}.html \
            geekbench.nf \
            -work-dir s3://nf-summit-work-mwvaughn/work/${QUEUE}
    done
done
