
scoreboard players add @s elements_farm-slots_stage-6_slots 1
title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-6_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-6_max-slots"},"color": "green"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20

$execute summon marker run function elements:farm_slots/stage_6/init_rotation {UUID:$(UUID)}