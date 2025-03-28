$data modify storage elements_farmslots_stage_3 UUID set value $(UUID)
execute store success score @s elements_farm-slots_stage-3_correct_UUID run data modify storage elements_farmslots_stage_3 UUID set from entity @s data.Owner

$execute if score @s elements_farm-slots_stage-3_correct_UUID matches 1 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst diesen Farmslot nicht abbauen, da er dir nicht gehört!","color": "red"}]
execute if score @s elements_farm-slots_stage-3_correct_UUID matches 1 run setblock ~ ~ ~ weeping_vines


$execute if score @s elements_farm-slots_stage-3_correct_UUID matches 0 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Farmslot abgebaut!"}]
execute if score @s elements_farm-slots_stage-3_correct_UUID matches 0 run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
$execute if score @s elements_farm-slots_stage-3_correct_UUID matches 0 run scoreboard players remove @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-3_slots 1
$execute if score @s elements_farm-slots_stage-3_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-3_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-3_max-slots"},"color": "green"}]

$scoreboard players set @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-3_broken 0

execute if score @s elements_farm-slots_stage-3_correct_UUID matches 0 run kill @s