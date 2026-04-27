summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_minenarbeiter"]}
loot replace entity @n[tag=spawning_minenarbeiter] weapon.mainhand loot elements:items/compressed/stone
data modify storage elements_get_item_data compressed_stone set from entity @n[tag=spawning_minenarbeiter] HandItems.[0]
loot replace entity @n[tag=spawning_minenarbeiter] weapon.mainhand loot elements:items/element_pickaxe/common
data modify storage elements_get_item_data element_pickaxe_common set from entity @n[tag=spawning_minenarbeiter] HandItems.[0]
loot replace entity @n[tag=spawning_minenarbeiter] weapon.mainhand loot elements:items/boss_spawing/stage_1
data modify storage elements_get_item_data boss_spawning_stage_1 set from entity @n[tag=spawning_minenarbeiter] HandItems.[0]


function elements:villager/spawning/stage_1_final with storage elements_get_item_data

data modify entity @n[tag=minenarbeiter] Offers.Recipes.[3].buy.count set value 32
data modify entity @n[tag=minenarbeiter] Offers.Recipes.[4].buy.count set value 32

kill @e[tag=spawning_minenarbeiter,type=armor_stand]
kill @s
