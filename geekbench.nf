#!/usr/bin/env nextflow
nextflow.enable.dsl=2

iterator_vals = Channel.of( 1, 2, 3, 4, 5, 6, 7, 8 )

process runGeekBench {
    
    tag { "task: ${task.index} - ${x}" }
    container 'davidsarkany/geekbench'

    memory '16 GB'
    cpus 4

    input:
      val x
 
    output:
    stdout

    script:

    geekbench_path = "/opt/geekbench/geekbench5"
    """

    for X in {1..3}; do ${geekbench_path}; done
    """
}

workflow {
    runGeekBench(iterator_vals)
}
