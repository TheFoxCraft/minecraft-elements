



#normal break
execute as @s[tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_2/break with entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}]


#grown
execute as @s[tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_log run tag @s add elements_farm-slot_stage-2_grown
execute as @s[tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_log run tag @s remove elements_farm-slot_stage-2

execute as @s[tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run setblock ~ ~ ~ spruce_sapling


#broken
execute as @s[tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ #elements:farmslots/stage_2_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] run tag @s add elements_farm-slot_stage-2_broken
execute as @s[tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ #elements:farmslots/stage_2_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] run tag @s remove elements_farm-slot_stage-2


execute as @s[tag=elements_farm-slot_stage-2] at @s unless block ~ ~ ~ spruce_sapling run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @s[tag=elements_farm-slot_stage-2] at @s unless block ~ ~ ~ spruce_sapling run fill ~ ~ ~ ~ ~ ~ air destroy






#highlighting


execute as @s[tag=elements_farm-slot_stage-2] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_2/highlight_normal_block





