#is broken
execute as @s[tag=elements_farm-slot_stage-4_broken] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s add elements_farm-slot_stage-4
execute as @s[tag=elements_farm-slot_stage-4_broken] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s remove elements_farm-slot_stage-4_broken


execute as @s[tag=elements_farm-slot_stage-4_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_4_broken run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @s[tag=elements_farm-slot_stage-4_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_4_broken run fill ~ ~ ~ ~ ~ ~ air destroy



#highlighting
execute as @s[tag=elements_farm-slot_stage-4_broken] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_4/highlight_missing_block

