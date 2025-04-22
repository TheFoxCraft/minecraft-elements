
#on place

execute as @a[scores={elements_farm-slots_stage-4_placed=1..}] run function elements:farm_slots/stage_4/placing

#main
execute as @a at @s as @e[type=marker,distance=..10,tag=elements_farm-slot_stage-4] run function elements:farm_slots/stage_4/main_normal
execute as @a at @s as @e[type=marker,distance=..10,tag=elements_farm-slot_stage-4_broken] run function elements:farm_slots/stage_4/main_broken



# show remaining slots
execute as @a[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-4_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-4_max-slots"},"color": "green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run scoreboard players set @s elements_sonstiges_actionbar_hold 1


scoreboard players set @a elements_farm-slots_stage-4_broken 0

#show broken slots
execute as @a[scores={z_just-ignore=500}] run function elements:farm_slots/stage_4/show_broken_slots_pre
