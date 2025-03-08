$summon marker ~ ~ ~ {Tags:["elements_farm-slot_stage-2"],data:{Owner:$(UUID)}}
scoreboard players add @s elements_farm-slots_stage-2_slots 1

title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-2_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-2_max-slots"},"color": "green"}]

