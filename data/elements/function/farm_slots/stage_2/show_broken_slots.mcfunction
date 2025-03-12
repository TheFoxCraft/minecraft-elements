$scoreboard players add @a[nbt={UUID:$(Owner)}] elements_farm-slots_stage-2_broken_slots 1
data modify storage elements_farmslots_stage_2_broken_slots UUID set from entity @s data.Owner
execute store result storage elements_farmslots_stage_2_broken_slots x int 1 run data get entity @s Pos[0]
execute store result storage elements_farmslots_stage_2_broken_slots y int 1 run data get entity @s Pos[1]
execute store result storage elements_farmslots_stage_2_broken_slots z int 1 run data get entity @s Pos[2]
data modify storage elements_farmslots_stage_2_broken_slots Dim set value "(Unbekannte Dimension)"
execute as @s[predicate=elements:is_in_netherblock] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Nether-Block"
execute as @s[predicate=elements:is_in_skyblock] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Sky-Block"
execute as @s[predicate=elements:is_in_stoneblock] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Stone-Block"
execute as @s[predicate=elements:is_in_oceanblock] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Ocean-Block"

function elements:farm_slots/stage_2/show_broken_slots_message with storage elements_farmslots_stage_2_broken_slots