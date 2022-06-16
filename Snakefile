workflow.use_conda = True

rule environment:
    input:
        readable = "environment.readable.yml"
    output:
        frozen = "environment.yml"
    shell:
        "conda env update -n mothership_dice -f {input.readable} --prune && "
        "conda env export -n mothership_dice > {output.frozen}"