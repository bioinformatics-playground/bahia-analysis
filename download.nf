/*
================================
params
================================
*/

params.resultsDir = 'results/rawGenomes'
// we can obtain this key from the NCBI portal
params.apiKey = "FIXME"

/*
================================
ids of genomes to be downloaded
================================
*/


ids = [

// TEST
'ERR1035258',

/*
'ERR1035258',
'ERR1035259',
'ERR1035260',
'ERR1035261',
'ERR1035262',
'ERR1035263',
'ERR1035264',
'ERR1035265',
'ERR1035266',
'ERR1035267',
'ERR1035268',
'ERR1035269',
'ERR1035270',
'ERR1035271',
'ERR1035272',
'ERR1035273',
'ERR1035274',
'ERR1035275',
'ERR1035276',
'ERR1035277',
'ERR1035278',
'ERR1035279',
'ERR1035280',
'ERR1035281',
'ERR1035282',
'ERR1035283',
'ERR1035284',
'ERR1035285',
'ERR1035286',
'ERR1035287',
'ERR1035288',
'ERR1035289',
'ERR1035290',
'ERR1035291',
'ERR1035292',
'ERR1035293',
'ERR1035294',
'ERR1035295',
'ERR1035296',
'ERR1035297',
'ERR1035298',
'ERR1035299',
'ERR1035300',
'ERR1035301',
'ERR1035302',
'ERR1035303',
'ERR1035304',
'ERR1035305',
'ERR1035306',
'ERR1035307',
'ERR1035308',
'ERR1035309',
'ERR1035310',
'ERR1035311',
'ERR1035312',
'ERR1035313',
'ERR1035314',
'ERR1035315',
'ERR1035316',
'ERR1035317',
'ERR1035318',
'ERR1035319',
'ERR1035320',
'ERR1035321',
'ERR1035322',
'ERR1035323',
'ERR1035324',
'ERR1035325',
'ERR1035326',
'ERR1035327',
'ERR1035328',
'ERR1035329',
'ERR1035330',
'ERR1035331',
'ERR1035332',
'ERR1035333',
'ERR1035334',
'ERR1035335',
'ERR1035336',
'ERR1035337',
'ERR1035338',
'ERR1035339',
'ERR1035340',
'ERR1035341',
'ERR1035342',
'ERR1035343',
'ERR1035344',
'ERR1035345',
'ERR1035346',
'ERR1035347',
'ERR1035348',
'ERR1035349',
'ERR1035350',
'ERR1035351',
'ERR1035352',
'ERR1035353',
'ERR1035354',
'ERR1035355',
'ERR1035356',
'ERR1035357',
'ERR1035358',
'ERR1035359',
'ERR1035360',
'ERR1035361',
'ERR1035362',
'ERR1035363',
'ERR1035364',
'ERR1035365',
'ERR1034618',
'ERR1034619',
'ERR1034620',
'ERR1034621',
'ERR1034622',
'ERR1034623',
'ERR1034624',
'ERR1034625',
'ERR1034626',
'ERR1034627',
'ERR1034628',
'ERR1034631',
'ERR1034635',
'ERR1034636',
'ERR1034649',
'ERR1034650',
'ERR1034651',
*/
]

  

/*
================================
only for publishing these files to results folder
================================
*/


process downloadRawGenomes {

    input:
    set genomeName, file(genomeReads) from Channel.fromSRA(ids, cache: true, apiKey: params.apiKey)

    script:
    
    """
    mkdir -p ../../../$params.resultsDir
    mv \$(readlink -f ${genomeReads[0]}) ../../../$params.resultsDir/
    mv \$(readlink -f ${genomeReads[1]}) ../../../$params.resultsDir/

    """


}
(base) root@scw-objective-pasteur:~# 
