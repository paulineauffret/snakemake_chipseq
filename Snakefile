import pandas as pd

include: "rules/getdata.smk"

configfile: "config.yml"

SRA_ID=pd.read_table("sra_id.tsv")['id']

rule all:
    input:
        expand("{sra_directory}/{sra_run_id}.sra", sra_directory=config['sra']['sra_directory'], sra_run_id=SRA_ID)

