

$data modify storage elements_farmslots_stage_5 UUID set value $(UUID)
execute store success score @s elements_farm-slots_stage-5_correct_UUID run data modify storage elements_farmslots_stage_5 UUID set from entity @s data.Owner

$execute if score @s elements_farm-slots_stage-5_correct_UUID matches 1 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst diesen Farmslot nicht abbauen, da er dir nicht gehört!","color": "red"}]
execute if score @s elements_farm-slots_stage-5_correct_UUID matches 1 run setblock ~ ~ ~ melon_stem
$execute if score @s elements_farm-slots_stage-5_correct_UUID matches 0 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Farmslot abgebaut!"}]
execute if score @s elements_farm-slots_stage-5_correct_UUID matches 0 run loot spawn ~ ~ ~ loot elements:items/compressed/melon
$execute if score @s elements_farm-slots_stage-5_correct_UUID matches 0 run scoreboard players remove @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-5_slots 1
$execute if score @s elements_farm-slots_stage-5_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-5_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-5_max-slots"},"color": "green"}]
$execute if score @s elements_farm-slots_stage-5_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20

$scoreboard players set @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-5_broken 0

$execute if entity @a[nbt={UUID:$(UUID)}] if score @s elements_farm-slots_stage-5_correct_UUID matches 0 run tag @s remove elements_farm-slot_stage-5
$execute if entity @a[nbt={UUID:$(UUID)}] if score @s elements_farm-slots_stage-5_correct_UUID matches 0 run kill @s