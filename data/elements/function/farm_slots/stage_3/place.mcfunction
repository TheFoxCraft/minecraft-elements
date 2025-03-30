$summon marker ~ ~ ~ {Tags:["elements_farm-slot_stage-3"],data:{Owner:$(UUID)}}
scoreboard players add @s elements_farm-slots_stage-3_slots 1
setblock ~ ~ ~ weeping_vines
title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-3_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-3_max-slots"},"color": "green"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20
