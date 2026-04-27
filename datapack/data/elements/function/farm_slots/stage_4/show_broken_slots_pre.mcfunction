scoreboard players set @s elements_farm-slots_stage-4_broken_slots 0

execute as @e[type=marker,tag=elements_farm-slot_stage-4_broken] at @s run function elements:farm_slots/stage_4/show_broken_slots with entity @s data

scoreboard players set @s z_just-ignore 0