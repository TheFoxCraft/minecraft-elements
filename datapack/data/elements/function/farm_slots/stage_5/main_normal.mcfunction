



#normal break
execute as @s[tag=elements_farm-slot_stage-5] at @s if block ~ ~ ~ air if block ~ ~-1 ~ farmland run function elements:farm_slots/stage_5/break with entity @n[distance=..10,scores={elements_farm-slots_stage-5_broken=1..}]




execute as @s[tag=elements_farm-slot_stage-5] at @s if block ~ ~ ~ air if block ~ ~-1 ~ farmland run setblock ~ ~ ~ melon_stem


#broken
execute as @s[tag=elements_farm-slot_stage-5] at @s if block ~ ~ ~ #elements:farmslots/stage_5_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-5_broken=1..}] run tag @s add elements_farm-slot_stage-5_broken
execute as @s[tag=elements_farm-slot_stage-5] at @s if block ~ ~ ~ #elements:farmslots/stage_5_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-5_broken=1..}] run tag @s remove elements_farm-slot_stage-5


execute as @s[tag=elements_farm-slot_stage-5] at @s unless block ~ ~ ~ #elements:farmslots/stage_5_slot run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @s[tag=elements_farm-slot_stage-5] at @s unless block ~ ~ ~ #elements:farmslots/stage_5_slot run fill ~ ~ ~ ~ ~ ~ air destroy






#highlighting


execute as @s[tag=elements_farm-slot_stage-5] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_5/highlight_normal_block





