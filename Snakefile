report : "workflow.rst"

include: "rules/getdata.smk"

rule all:
    input:
        "/home/pauline/ncbi/public/sra/DRR218951.sra"

