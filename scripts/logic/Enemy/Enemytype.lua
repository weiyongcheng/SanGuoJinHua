EnemyType = {}

local normal = {}

EnemyType.normal = normal

    normal[1] = 'hfoo'
    normal[2] = 'hkni'
    normal[3] = 'hrif'
    normal[4] = 'hmtm'
    normal[5] = 'hgyr'
    normal[6] = 'hgry'
    normal[7] = 'hmpr'
    normal[8] = 'hsor'
    normal[9] = 'hmtt'
    normal[10] = 'hspt'
    normal[11] = 'hdhw'
    normal[12] = 'nnsw'
    normal[13] = 'nnmg'
    normal[14] = 'nwgs'
    normal[15] = 'nsnp'
    normal[16] = 'nmyr'
    normal[17] = 'nnrg'
    normal[18] = 'nhyc'
    normal[19] = 'ogru'
    normal[20] = 'orai'
    normal[21] = 'otau'
    normal[22] = 'ohun'
    normal[23] = 'ocat'
    normal[24] = 'okod'
    normal[25] = 'oshm'
    normal[26] = 'earc'
    normal[27] = 'esen'
    normal[28] = 'edry'
    normal[29] = 'ebal'
    normal[30] = 'ehip'
    normal[31] = 'echm'
    normal[32] = 'edot'
    normal[33] = 'edoc'
    normal[34] = 'emtg'
    normal[35] = 'efdr'
    normal[36] = 'owyv'


local data = {}

EnemyType.data = data

for i = 1,999 do
    data[i] = {
        attack = 2 * i,
        armor = 0,
        movesp = 100,
        life = 40 + (10 * i)
    }
end