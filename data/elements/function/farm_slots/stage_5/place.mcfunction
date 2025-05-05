$summon marker ~ ~ ~ {Tags:["elements_farm-slot_stage-5"],data:{Owner:$(UUID)}}
scoreboard players add @s elements_farm-slots_stage-5_slots 1
setblock ~ ~-1 ~ farmland
setblock ~ ~ ~ melon_stem
title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-5_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-5_max-slots"},"color": "green"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20
