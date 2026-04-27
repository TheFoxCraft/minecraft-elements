summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_stage-3_main"]}
loot replace entity @n[tag=spawning_stage-3_main] weapon.mainhand loot elements:items/compressed/crimson_vines
data modify storage elements_get_item_data compressed_crimson_vines set from entity @n[tag=spawning_stage-3_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-3_main] weapon.mainhand loot elements:items/element_sword/common
data modify storage elements_get_item_data element_sword_common set from entity @n[tag=spawning_stage-3_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-3_main] weapon.mainhand loot elements:items/boss_spawing/stage_3
data modify storage elements_get_item_data boss_spawning_stage_3 set from entity @n[tag=spawning_stage-3_main] HandItems.[0]


function elements:villager/spawning/stage_3_final with storage elements_get_item_data

data modify entity @n[tag=stage-3_main] Offers.Recipes.[1].buy.count set value 32
data modify entity @n[tag=stage-3_main] Offers.Recipes.[2].buy.count set value 32

kill @e[tag=spawning_stage-3_main,type=armor_stand]
kill @s
