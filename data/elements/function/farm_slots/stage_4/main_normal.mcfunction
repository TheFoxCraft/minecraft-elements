
#normal break
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_4/break with entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}]

execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_4/set_bush

#broken
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ #elements:farmslots/stage_4_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s add elements_farm-slot_stage-4_broken
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ #elements:farmslots/stage_4_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s remove elements_farm-slot_stage-4


execute as @s[tag=elements_farm-slot_stage-4] at @s unless block ~ ~ ~ sweet_berry_bush run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @s[tag=elements_farm-slot_stage-4] at @s unless block ~ ~ ~ sweet_berry_bush run fill ~ ~ ~ ~ ~ ~ air destroy

execute as @s[tag=elements_farm-slot_stage-4] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_4/highlight_normal_block

#growing
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=0] run scoreboard players set @s elements_farm-slots_stage-4_age 0
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=1] run scoreboard players set @s elements_farm-slots_stage-4_age 1
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=2] run scoreboard players set @s elements_farm-slots_stage-4_age 2
execute as @s[tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=3] run scoreboard players set @s elements_farm-slots_stage-4_age 3

#calc farming
execute as @s[tag=elements_farm-slot_stage-4] if score @s elements_farm-slots_stage-4_age matches 1 if score @s elements_farm-slots_stage-4_age_old matches 3 run say Basst
execute as @s[tag=elements_farm-slot_stage-4] if score @s elements_farm-slots_stage-4_age matches 1 if score @s elements_farm-slots_stage-4_age_old matches 2 at @s run playsound minecraft:block.note_block.didgeridoo master @a[distance=..7] ~ ~ ~ 100 0
execute as @s[tag=elements_farm-slot_stage-4] if score @s elements_farm-slots_stage-4_age matches 1 if score @s elements_farm-slots_stage-4_age_old matches 2 at @s run kill @n[type=item,nbt={Age:0s,Item:{id:"minecraft:sweet_berries"}}]


#old age
execute as @s[tag=elements_farm-slot_stage-4] run scoreboard players operation @s elements_farm-slots_stage-4_age_old = @s elements_farm-slots_stage-4_age

