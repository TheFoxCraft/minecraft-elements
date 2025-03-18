scoreboard players set @s elements_farm-slots_stage-2_broken_slots 0

execute as @e[type=marker,tag=elements_farm-slot_stage-2_broken] at @s run function elements:farm_slots/stage_2/show_broken_slots with entity @s data

scoreboard players set @s just-ignore 0