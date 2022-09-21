#!/usr/bin/env nextflow
nextflow.enable.dsl=2

iterator_vals = Channel.of( 1,)

process runGeekBench {
    
    tag { "task: ${task.index} - ${x}" }
    container 'davidsarkany/geekbench'

    memory '32 GB'
    cpus 32

    input:
      val x
 
    output:
    stdout

    script:

    geekbench_path = "/opt/geekbench/geekbench5"
    """

    for X in {1..10}; do ${geekbench_path}; done
    """
}

process runFio {
    
    tag { "task: ${task.index} - ${x}" }
    container 'mwvaughn/fio'

    memory '32 GB'
    cpus 32

    input:
      val x
 
    output:
    stdout

    script:

    fio_path = "/usr/bin/fio"
    fio_job = "/rand-rw.fio"
    """

    for X in {1..3}; do ${fio_path} ${fio_job}; done
    """
}

workflow {
    runGeekBench(iterator_vals)
    runFio(iterator_vals)
}
