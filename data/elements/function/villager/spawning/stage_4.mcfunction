summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_stage-4_main"]}
loot replace entity @n[tag=spawning_stage-4_main] weapon.mainhand loot elements:items/compressed/sweet_berries
data modify storage elements_get_item_data compressed_sweet_berries set from entity @n[tag=spawning_stage-4_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-4_main] weapon.mainhand loot elements:items/element_bow/common
data modify storage elements_get_item_data element_bow_common set from entity @n[tag=spawning_stage-4_main] HandItems.[0]
loot replace entity @n[tag=spawning_stage-4_main] weapon.mainhand loot elements:items/boss_spawing/stage_4
data modify storage elements_get_item_data boss_spawning_stage_4 set from entity @n[tag=spawning_stage-4_main] HandItems.[0]


function elements:villager/spawning/stage_4_final with storage elements_get_item_data

data modify entity @n[tag=stage-4_main] Offers.Recipes.[1].buy.count set value 32
data modify entity @n[tag=stage-4_main] Offers.Recipes.[2].buy.count set value 32

kill @e[tag=spawning_stage-4_main,type=armor_stand]
kill @s
