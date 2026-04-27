summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_stage-6_main"]}
loot replace entity @n[tag=spawning_stage-6_main] weapon.mainhand loot elements:items/compressed/cocoa
data modify storage elements_get_item_data compressed_cocoa set from entity @n[tag=spawning_stage-6_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-6_main] weapon.mainhand loot elements:items/element_shovel/common
data modify storage elements_get_item_data element_shovel_common set from entity @n[tag=spawning_stage-6_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-6_main] weapon.mainhand loot elements:items/boss_spawing/stage_6
data modify storage elements_get_item_data boss_spawning_stage_6 set from entity @n[tag=spawning_stage-6_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-6_main] weapon.mainhand loot elements:items/other/stage_6/cocoa_beans
data modify storage elements_get_item_data other_cocoa_beans set from entity @n[tag=spawning_stage-6_main] HandItems.[0]

function elements:villager/spawning/stage_6_final with storage elements_get_item_data

data modify entity @n[tag=stage-6_main] Offers.Recipes.[0].buy.count set value 64
data modify entity @n[tag=stage-6_main] Offers.Recipes.[1].buy.count set value 32
data modify entity @n[tag=stage-6_main] Offers.Recipes.[2].buy.count set value 48
data modify entity @n[tag=stage-6_main] Offers.Recipes.[3].buy.count set value 64


kill @e[tag=spawning_stage-6_main,type=armor_stand]
kill @s
