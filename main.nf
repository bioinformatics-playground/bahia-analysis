nextflow.enable.dsl = 2


include { TRIMMOMATIC } from "./modules/trimmomatic/trimmomatic.nf"
include { MTBSEQ } from "./modules/mtbseq/mtbseq.nf"
include { RD_ANALYZER } from "./modules/rd_analyzer/rd_analyzer.nf"
include { SPOTYPING } from "./modules/spotyping/spotyping.nf"
include { SPADES } from "./modules/spades/spades.nf"
include { PROKKA } from "./modules/prokka/prokka.nf"

workflow MAIN {

}

workflow test {
    sra_ids_ch = Channel.fromSRA(ids, cache: true, apiKey: params.ncbi_api_key)

    TRIMMOMATIC(sra_ids_ch)

    RD_ANALYZER(TRIMMOMATIC.out)

    SPOTYPING(TRIMMOMATIC.out)


}
