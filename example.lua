local key = {
    [1] = "OVER",
    [2] = "DOOWHITE",
    [3] = "DAMNKIDS",
    [4] = "DEARGOD",
    [5] = "ASAP",
    [6] = "GLACIUS",
    [7] = "NOTORIUS",
    [8] = "KWANZING",
    [9] = "DWUNDER19",
    [10] = "JANANGKAAN",
    [11] = "IZY",
    [12] = "JUBU",
    [13] = "REDLINE",
    [14] = "SEIRYU",
    [15] = "STARKREAL",
    [16] = "SIXTYSIX",
}

local key_team = {}
for k,v in pairs(key) do
    key_team[v] = k
end


------- SET -------------

local keyteam_player = {
--- insert team
}

------- SET -------------



local identifier = {}

for k,v in pairs(keyteam_player) do
    for i=1, #v do
        table.insert(identifier,{
            ident = v[i],
            id_team  = key[k]
        })
    end
    
end


for k,v in pairs(identifier) do
    print('INSERT INTO `data_hood` (`identifier`, `team`) VALUES ("'.. v.ident ..'",'.. key_team[v.id_team] .. ');')
end
