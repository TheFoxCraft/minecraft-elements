#grown
execute as @s[tag=elements_farm-slot_stage-2_grown] at @s if block ~ ~ ~ air run tag @s add elements_farm-slot_stage-2
execute as @s[tag=elements_farm-slot_stage-2_grown] at @s if block ~ ~ ~ air run tag @s remove elements_farm-slot_stage-2_grown

execute as @s[tag=elements_farm-slot_stage-2_grown] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_2/highlight_grown_block