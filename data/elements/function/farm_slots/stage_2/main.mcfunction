
#on place
execute as @a[scores={elements_farm-slots_stage-2_placed=1..}] at @s run function elements_retina:traverse/setup
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_2 x set from storage elements_retina:output TargetedBlock[0]
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_2 y set from storage elements_retina:output TargetedBlock[1]
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_2 z set from storage elements_retina:output TargetedBlock[2]

execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] at @s run function elements:farm_slots/stage_2/init_block with storage elements_farmslots_stage_2
execute as @a[scores={elements_farm-slots_stage-2_placed=1..},sort=nearest,limit=1] run scoreboard players remove @s elements_farm-slots_stage-2_placed 1






#markers

#on-break

execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_2/break with entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}]
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] if block ~ ~-1 ~ #dirt run setblock ~ ~ ~ spruce_sapling
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air unless entity @n[distance=..10,scores={elements_farm-slots_stage-2_broken=1..}] unless block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_2/highlight_missing_block
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_sapling unless block ~ ~-1 ~ #dirt run setblock ~ ~ ~ air


execute as @a[nbt={SelectedItem:{id:"minecraft:spruce_sapling",components:{"minecraft:custom_model_data":1}}}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-2_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-2_max-slots"},"color": "green"}]

#grown
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_log run tag @s add elements_farm-slot_stage-2_grown
execute as @e[type=marker,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_log run tag @s remove elements_farm-slot_stage-2

execute as @e[type=marker,tag=elements_farm-slot_stage-2_grown] at @s if block ~ ~ ~ air run tag @s add elements_farm-slot_stage-2
execute as @e[type=marker,tag=elements_farm-slot_stage-2_grown] at @s if block ~ ~ ~ air run setblock ~ ~ ~ spruce_sapling
execute as @e[type=marker,tag=elements_farm-slot_stage-2_grown,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ spruce_sapling run tag @s remove elements_farm-slot_stage-2_grown


#show broken slots
execute as @a[scores={just-ignore=500}] run function elements:farm_slots/stage_2/show_broken_slots_pre
