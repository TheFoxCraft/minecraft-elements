
#on place
execute as @a[scores={elements_farm-slots_stage-4_placed=1..}] at @s run function elements_retina:traverse/setup
execute as @a[scores={elements_farm-slots_stage-4_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_4 x set from storage elements_retina:output TargetedBlock[0]
execute as @a[scores={elements_farm-slots_stage-4_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_4 y set from storage elements_retina:output TargetedBlock[1]
execute as @a[scores={elements_farm-slots_stage-4_placed=1..},sort=nearest,limit=1] run data modify storage elements_farmslots_stage_4 z set from storage elements_retina:output TargetedBlock[2]

execute as @a[scores={elements_farm-slots_stage-4_placed=1..},sort=nearest,limit=1] at @s run function elements:farm_slots/stage_4/init_block with storage elements_farmslots_stage_4
execute as @a[scores={elements_farm-slots_stage-4_placed=1..},sort=nearest,limit=1] run scoreboard players remove @s elements_farm-slots_stage-4_placed 1



#should be placed
# block occupied
# block can be placed

#block below missing



#normal break
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_4/break with entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}]

execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run function elements:farm_slots/stage_4/set_bush

#broken
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ #elements:farmslots/stage_4_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s add elements_farm-slot_stage-4_broken
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ #elements:farmslots/stage_4_broken unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s remove elements_farm-slot_stage-4


execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s unless block ~ ~ ~ sweet_berry_bush run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s unless block ~ ~ ~ sweet_berry_bush run fill ~ ~ ~ ~ ~ ~ air destroy


#is broken
execute as @e[type=marker,tag=elements_farm-slot_stage-4_broken] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s add elements_farm-slot_stage-4
execute as @e[type=marker,tag=elements_farm-slot_stage-4_broken] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt unless entity @n[distance=..10,scores={elements_farm-slots_stage-4_broken=1..}] run tag @s remove elements_farm-slot_stage-4_broken


execute as @e[type=marker,tag=elements_farm-slot_stage-4_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_4_broken run tellraw @a[distance=..7] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst hier diesen Block nicht platzieren! Hier ist ein Farmslot","color": "red"}]
execute as @e[type=marker,tag=elements_farm-slot_stage-4_broken] at @s unless block ~ ~ ~ #elements:farmslots/stage_4_broken run fill ~ ~ ~ ~ ~ ~ air destroy



#highlighting
execute as @e[type=marker,tag=elements_farm-slot_stage-4_broken] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_4/highlight_missing_block
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if entity @a[distance=..10] run function elements:farm_slots/stage_4/highlight_normal_block

#growing
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=0] run scoreboard players set @s elements_farm-slots_stage-4_age 0
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=1] run scoreboard players set @s elements_farm-slots_stage-4_age 1
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=2] run scoreboard players set @s elements_farm-slots_stage-4_age 2
execute as @e[type=marker,tag=elements_farm-slot_stage-4] at @s if block ~ ~ ~ sweet_berry_bush[age=3] run scoreboard players set @s elements_farm-slots_stage-4_age 3

#calc farming
execute as @e[type=marker,tag=elements_farm-slot_stage-4] if score @s elements_farm-slots_stage-4_age matches 1 if score @s elements_farm-slots_stage-4_age_old matches 3 run say Basst
execute as @e[type=marker,tag=elements_farm-slot_stage-4] if score @s elements_farm-slots_stage-4_age matches 1 if score @s elements_farm-slots_stage-4_age_old matches 2 at @s run playsound minecraft:block.note_block.didgeridoo master @a[distance=..7] ~ ~ ~ 100 0
execute as @e[type=marker,tag=elements_farm-slot_stage-4] if score @s elements_farm-slots_stage-4_age matches 1 if score @s elements_farm-slots_stage-4_age_old matches 2 at @s run kill @n[type=item,nbt={Age:0s,Item:{id:"minecraft:sweet_berries"}}]


#old age
execute as @e[type=marker,tag=elements_farm-slot_stage-4] run scoreboard players operation @s elements_farm-slots_stage-4_age_old = @s elements_farm-slots_stage-4_age





# show remaining slots
execute as @a[nbt={SelectedItem:{id:"minecraft:sweet_berries",components:{"minecraft:custom_model_data":1}}}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-4_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-4_max-slots"},"color": "green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:sweet_berries",components:{"minecraft:custom_model_data":1}}}] run scoreboard players set @s elements_sonstiges_actionbar_hold 1


scoreboard players set @a elements_farm-slots_stage-4_broken 0

#show broken slots
execute as @a[scores={z_just-ignore=500}] run function elements:farm_slots/stage_4/show_broken_slots_pre
