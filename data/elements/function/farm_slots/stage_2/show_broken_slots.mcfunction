$scoreboard players add @a[nbt={UUID:$(Owner)}] elements_farm-slots_stage-2_broken_slots 1
data modify storage elements_farmslots_stage_2_broken_slots UUID set from entity @s data.Owner
execute store result storage elements_farmslots_stage_2_broken_slots x int 1 run data get entity @s Pos[0]
execute store result storage elements_farmslots_stage_2_broken_slots y int 1 run data get entity @s Pos[1]
execute store result storage elements_farmslots_stage_2_broken_slots z int 1 run data get entity @s Pos[2]
data modify storage elements_farmslots_stage_2_broken_slots Dim set value "(Unbekannte Dimension)"
execute in elements:nether as @e[type=marker,tag=elements_farm-slot_stage-2,distance=0..] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Nether-Block"
execute in elements:sky as @e[type=marker,tag=elements_farm-slot_stage-2,distance=0..] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Sky-Block"
execute in elements:stone as @e[type=marker,tag=elements_farm-slot_stage-2,distance=0..] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Stone-Block"
execute in elements:ocean as @e[type=marker,tag=elements_farm-slot_stage-2,distance=0..] at @s unless block ~ ~ ~ spruce_sapling run data modify storage elements_farmslots_stage_2_broken_slots Dim set value "Ocean-Block"
#Dimensin Selection Falsch!

function elements:farm_slots/stage_2/show_broken_slots_message with storage elements_farmslots_stage_2_broken_slots