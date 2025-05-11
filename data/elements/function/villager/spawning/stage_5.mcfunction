summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_stage-5_main"]}
loot replace entity @n[tag=spawning_stage-5_main] weapon.mainhand loot elements:items/compressed/melon
data modify storage elements_get_item_data compressed_melon set from entity @n[tag=spawning_stage-5_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-5_main] weapon.mainhand loot elements:items/element_hoe/common
data modify storage elements_get_item_data element_hoe_common set from entity @n[tag=spawning_stage-5_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-5_main] weapon.mainhand loot elements:items/boss_spawing/stage_5
data modify storage elements_get_item_data boss_spawning_stage_5 set from entity @n[tag=spawning_stage-5_main] HandItems.[0]


function elements:villager/spawning/stage_5_final with storage elements_get_item_data

data modify entity @n[tag=stage-5_main] Offers.Recipes.[1].buy.count set value 32
data modify entity @n[tag=stage-5_main] Offers.Recipes.[2].buy.count set value 32

kill @e[tag=spawning_stage-5_main,type=armor_stand]
kill @s
