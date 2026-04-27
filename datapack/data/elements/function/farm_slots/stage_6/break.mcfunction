$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run return run function elements:farm_slots/stage_6/cancel_break with entity @s
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] run return run function elements:farm_slots/stage_6/cancel_break with entity @s
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run return run function elements:farm_slots/stage_6/cancel_break with entity @s
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] run return run function elements:farm_slots/stage_6/cancel_break with entity @s
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] run return run function elements:farm_slots/stage_6/cancel_break with entity @s
$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] run return run function elements:farm_slots/stage_6/cancel_break with entity @s


$data modify storage elements_farmslots_stage_6 UUID set value $(UUID)
execute store success score @s elements_farm-slots_stage-6_correct_UUID run data modify storage elements_farmslots_stage_6 UUID set from entity @s data.Owner

$execute if score @s elements_farm-slots_stage-6_correct_UUID matches 1 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du kannst diesen Farmslot nicht abbauen, da er dir nicht gehört!","color": "red"}]
execute if score @s elements_farm-slots_stage-6_correct_UUID matches 1 run function elements:farm_slots/stage_6/replace_correct
$execute if score @s elements_farm-slots_stage-6_correct_UUID matches 1 as @a[nbt={UUID:$(UUID)}] run function elements:farm_slots/stage_6/cancel_break




$execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 run tellraw @a[nbt={UUID:$(UUID)}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Farmslot abgebaut!"}]
execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 run loot spawn ~ ~ ~ loot elements:items/compressed/cocoa
$execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 run scoreboard players remove @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-6_slots 1
$execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text": "Farmslots: ","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-6_slots"},"color": "green"},{"text": "/","color": "green"},{"score": {"name": "@s","objective": "elements_farm-slots_stage-6_max-slots"},"color": "green"}]
$execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 as @a[nbt={UUID:$(UUID)}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20


$scoreboard players remove @a[nbt={UUID:$(UUID)}] elements_farm-slots_stage-6_broken 1

execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 run tag @s remove elements_farm-slot_stage-6
execute if score @s elements_farm-slots_stage-6_correct_UUID matches 0 run kill @s