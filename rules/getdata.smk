rule download_sra_data:
    output:
        #"/home/pauline/ncbi/public/sra/{name}.sra"
        "{sra_path}/{name}.sra"
    params:
        "{name}"
    log:
        "logs/{name}_download_sra.log"
    shell:
        "prefetch -v {params} >& {log} 2>&1 ;"


