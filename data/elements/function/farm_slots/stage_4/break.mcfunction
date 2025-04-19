$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":1}}}] run return fail
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":2}}}] run return fail
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":3}}}] run return fail
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] run return fail
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] run return fail



$data modify storage elements_farmslots_stage_4 UUID set value $(UUID)
execute store success score @s elements_farm-slots_stage-4_correct_UUID run data modify storage elements_farmslots_stage_4 UUID set from entity @s data.Owner

$execute if score @s elements_farm-slots_stage-4_correct_UUID matches 1 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst diesen Farmslot nicht abbauen, da er dir nicht gehört!","color": "red"}]
execute if score @s elements_farm-slots_stage-4_correct_UUID matches 1 run function elements:farm_slots/stage_4/set_bush


$execute if score @s elements_farm-slots_stage-4_correct_UUID matches 0 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Farmslot abgebaut!"}]
execute if score @s elements_farm-slots_stage-4_correct_UUID matches 0 run summon item ~ ~ ~ {Item:{id:"sweet_berries"}}
$execute if score @s elements_farm-slots_stage-4_correct_UUID matches 0 run scoreboard players remove @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-4_slots 1
$execute if score @s elements_farm-slots_stage-4_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-4_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-4_max-slots"},"color": "green"}]
$execute if score @s elements_farm-slots_stage-4_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20

$scoreboard players set @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-4_broken 0

$execute if entity @a[nbt={UUID:$(UUID)}] if score @s elements_farm-slots_stage-4_correct_UUID matches 0 run kill @s