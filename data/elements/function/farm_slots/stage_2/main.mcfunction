
#on place
execute as @a[scores={elements_farm-slots_stage-2_placed=1..}] at @s run function elements_retina:traverse/setup
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_2 x set from storage elements_retina:output TargetedBlock[0]
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_2 y set from storage elements_retina:output TargetedBlock[1]
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_2 z set from storage elements_retina:output TargetedBlock[2]

execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] at @s run function elements:farm_slots/stage_2/init_block with storage elements_farmslots_stage_2
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run scoreboard players remove @s elements_farm-slots_stage-2_placed 1


#should be placed
# block occupied
# block can be placed

#block below missing



#normal break
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_2/break with entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}]

#grown
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_log run tag @s add elements_farm-slot_stage-2_grown
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_log run tag @s remove elements_farm-slot_stage-2

execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run setblock ~ ~ ~ spruce_sapling


#broken
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ #elements:farmslots/stage_2_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] run tag @s add elements_farm-slot_stage-2_broken
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ #elements:farmslots/stage_2_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] run tag @s remove elements_farm-slot_stage-2


execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s unless block ~ ~ ~ spruce_sapling run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s unless block ~ ~ ~ spruce_sapling run fill ~ ~ ~ ~ ~ ~ air destroy


#is broken
execute as @e[type=marker,tag=elements_farm-slot_stage-2_broken] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] run tag @s add elements_farm-slot_stage-2
execute as @e[type=marker,tag=elements_farm-slot_stage-2_broken] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] run tag @s remove elements_farm-slot_stage-2_broken


execute as @e[type=marker,tag=elements_farm-slot_stage-2_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_2_broken run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @e[type=marker,tag=elements_farm-slot_stage-2_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_2_broken run fill ~ ~ ~ ~ ~ ~ air destroy


#grown
execute as @e[type=marker,tag=elements_farm-slot_stage-2_grown] at @s if block ~ ~ ~ air run tag @s add elements_farm-slot_stage-2
execute as @e[type=marker,tag=elements_farm-slot_stage-2_grown] at @s if block ~ ~ ~ air run tag @s remove elements_farm-slot_stage-2_grown


#highlighting
execute as @e[type=marker,tag=elements_farm-slot_stage-2_grown] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_2/highlight_grown_block
execute as @e[type=marker,tag=elements_farm-slot_stage-2_broken] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_2/highlight_missing_block
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_2/highlight_normal_block





# show remaining slots
execute as @a[nbt={SelectedItem:{id:"minecraft:spruce_sapling",components:{"minecraft:custom_model_data":1}}}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-2_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-2_max-slots"},"color": "green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:spruce_sapling",components:{"minecraft:custom_model_data":1}}}] run scoreboard players set @s elements_sonstiges_actionbar_hold 1

#show broken slots
execute as @a[scores={z_just-ignore=500}] run function elements:farm_slots/stage_2/show_broken_slots_pre
