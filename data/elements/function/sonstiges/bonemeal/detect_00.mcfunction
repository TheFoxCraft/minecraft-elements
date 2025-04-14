execute positioned ~ ~ ~ unless block ~ ~ ~ spruce_sapling run return fail
execute positioned ~1 ~ ~ unless block ~ ~ ~ spruce_sapling run return fail
execute positioned ~ ~ ~1 unless block ~ ~ ~ spruce_sapling run return fail
execute positioned ~1 ~ ~1 unless block ~ ~ ~ spruce_sapling run return fail

execute positioned ~ ~ ~ run setblock ~ ~ ~ air
execute positioned ~1 ~ ~ run setblock ~ ~ ~ air
execute positioned ~ ~ ~1 run setblock ~ ~ ~ air
execute positioned ~1 ~ ~1 run setblock ~ ~ ~ air

execute store success score @s elements_bonemeal_success run place feature mega_spruce ~ ~ ~
