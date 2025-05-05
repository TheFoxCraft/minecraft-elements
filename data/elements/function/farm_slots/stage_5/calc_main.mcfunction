#on place
execute as @a[scores={elements_farm-slots_stage-5_placed=1..}] at @s run function elements_retina:traverse/setup
execute as @a[scores={elements_farm-slots_stage-5_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_5 x set from storage elements_retina:output TargetedBlock[0]
execute as @a[scores={elements_farm-slots_stage-5_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_5 y set from storage elements_retina:output TargetedBlock[1]
execute as @a[scores={elements_farm-slots_stage-5_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_5 z set from storage elements_retina:output TargetedBlock[2]

execute as @a[scores={elements_farm-slots_stage-5_placed=1..},sort=nearest,limit=1] at @s run function elements:farm_slots/stage_5/init_block with storage elements_farmslots_stage_5
execute as @a[scores={elements_farm-slots_stage-5_placed=1..},sort=nearest,limit=1] run scoreboard players remove @s elements_farm-slots_stage-5_placed 1

#main
execute as @a at @s as @e[type=marker,distance=..10,tag=elements_farm-slot_stage-5] run function elements:farm_slots/stage_5/main_normal
execute as @a at @s as @e[type=marker,distance=..10,tag=elements_farm-slot_stage-5_broken] run function elements:farm_slots/stage_5/main_broken

# show remaining slots
execute as @a[nbt={SelectedItem:{id:"minecraft:green_wool",components:{"minecraft:custom_model_data":1}}}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-5_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-5_max-slots"},"color": "green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:green_wool",components:{"minecraft:custom_model_data":1}}}] run scoreboard players set @s elements_sonstiges_actionbar_hold 1


scoreboard players set @a elements_farm-slots_stage-5_broken 0

#show broken slots
execute as @a[scores={z_just-ignore=500}] run function elements:farm_slots/stage_5/show_broken_slots_pre



