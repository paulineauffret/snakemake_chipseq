rule download_sra_data:
    output:
        sra="/home/pauline/ncbi/public/sra/{name}.sra"
    params:
        "{name}"
    log:
        "logs/{name}_download_sra.log"
    shell:
        "prefetch -v {params} >& {log} 2>&1 ;"


