#correct breaking
execute as @a[scores={elements_farm-slots_stage-3_broken_plant=1..}] run scoreboard players add @s elements_farm-slots_stage-3_broken 1
execute as @a[scores={elements_farm-slots_stage-3_broken_plant=1..}] run scoreboard players remove @s elements_farm-slots_stage-3_broken_plant 1

#on place
execute as @a[scores={elements_farm-slots_stage-3_placed=1..}] at @s run function elements_retina:traverse/setup
execute as @a[scores={elements_farm-slots_stage-3_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_3 x set from storage elements_retina:output TargetedBlock[0]
execute as @a[scores={elements_farm-slots_stage-3_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_3 y set from storage elements_retina:output TargetedBlock[1]
execute as @a[scores={elements_farm-slots_stage-3_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_3 z set from storage elements_retina:output TargetedBlock[2]

execute as @a[scores={elements_farm-slots_stage-3_placed=1..},sort=nearest,limit=1] at @s run function elements:farm_slots/stage_3/init_block with storage elements_farmslots_stage_3
execute as @a[scores={elements_farm-slots_stage-3_placed=1..},sort=nearest,limit=1] run scoreboard players remove @s elements_farm-slots_stage-3_placed 1


#should be placed
# block occupied
# block can be placed

#block below missing



#normal break
execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s if block ~ ~ ~ air unless block ~ ~1 ~ #elements:farmslots/stage_3_broken run function elements:farm_slots/stage_3/break with entity @n[distance=..10,scores={elements_farm-slots_stage-3_broken=1..}]


execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s if block ~ ~ ~ air unless block ~ ~1 ~ #elements:farmslots/stage_3_broken run setblock ~ ~ ~ weeping_vines


#broken
execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s if block ~ ~ ~ #elements:farmslots/stage_3_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-3_broken=1..}] run tag @s add elements_farm-slot_stage-3_broken
execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s if block ~ ~ ~ #elements:farmslots/stage_3_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-3_broken=1..}] run tag @s remove elements_farm-slot_stage-3


execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s unless block ~ ~ ~ #elements:farmslots/stage_3_slot run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s unless block ~ ~ ~ #elements:farmslots/stage_3_slot run fill ~ ~ ~ ~ ~ ~ air destroy


#is broken
execute as @e[type=marker,tag=elements_farm-slot_stage-3_broken] at @s if block ~ ~ ~ air unless block ~ ~1 ~ #elements:farmslots/stage_3_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-3_broken=1..}] run tag @s add elements_farm-slot_stage-3
execute as @e[type=marker,tag=elements_farm-slot_stage-3_broken] at @s if block ~ ~ ~ air unless block ~ ~1 ~ #elements:farmslots/stage_3_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-3_broken=1..}] run tag @s remove elements_farm-slot_stage-3_broken


execute as @e[type=marker,tag=elements_farm-slot_stage-3_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_3_broken run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @e[type=marker,tag=elements_farm-slot_stage-3_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_3_broken run fill ~ ~ ~ ~ ~ ~ air destroy




#highlighting
execute as @e[type=marker,tag=elements_farm-slot_stage-3_broken] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_3/highlight_missing_block
execute as @e[type=marker,tag=elements_farm-slot_stage-3] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_3/highlight_normal_block





# show remaining slots
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-3_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-3_max-slots"},"color": "green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run scoreboard players set @s elements_sonstiges_actionbar_hold 1

scoreboard players set @a elements_farm-slots_stage-3_broken 0

#show broken slots
execute as @a[scores={just-ignore=501}] run function elements:farm_slots/stage_3/show_broken_slots_pre
