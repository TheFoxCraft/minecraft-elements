

#normal break
execute at @s[tag=elements_farm-slot_stage-6] if block ~ ~ ~ air run function elements:farm_slots/stage_6/break with entity @n[distance=..10,scores={elements_farm-slots_stage-6_broken=1..}]


execute at @s[tag=elements_farm-slot_stage-6] if block ~ ~ ~ air run function elements:farm_slots/stage_6/replace_correct


#broken
execute at @s[tag=elements_farm-slot_stage-6] if block ~ ~ ~ #elements:farmslots/stage_6_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-6_broken=1..}] run tag @s add elements_farm-slot_stage-6_broken
execute at @s[tag=elements_farm-slot_stage-6] if block ~ ~ ~ #elements:farmslots/stage_6_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-6_broken=1..}] run tag @s remove elements_farm-slot_stage-6


execute at @s[tag=elements_farm-slot_stage-6] unless block ~ ~ ~ cocoa run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute at @s[tag=elements_farm-slot_stage-6] unless block ~ ~ ~ cocoa run fill ~ ~ ~ ~ ~ ~ air destroy



#growing
execute as @s[tag=elements_farm-slot_stage-6] at @s if block ~ ~ ~ cocoa[age=0] run scoreboard players set @s elements_farm-slots_stage-6_age 0
execute as @s[tag=elements_farm-slot_stage-6] at @s if block ~ ~ ~ cocoa[age=1] run scoreboard players set @s elements_farm-slots_stage-6_age 1
execute as @s[tag=elements_farm-slot_stage-6] at @s if block ~ ~ ~ cocoa[age=2] run scoreboard players set @s elements_farm-slots_stage-6_age 2

#calc farming
execute as @s[tag=elements_farm-slot_stage-6] if score @s elements_farm-slots_stage-6_age matches 0 if score @s elements_farm-slots_stage-6_age_old matches 2 at @s as @p[scores={elements_farm-slots_stage-6_broken=1..}] run function elements:farm_slots/stage_6/successful_harvest


#old age
execute as @s[tag=elements_farm-slot_stage-6] run scoreboard players operation @s elements_farm-slots_stage-6_age_old = @s elements_farm-slots_stage-6_age



#highlighting

execute at @s[tag=elements_farm-slot_stage-6] if entity @a[distance=..10] run function elements:farm_slots/stage_6/highlight_normal_block





