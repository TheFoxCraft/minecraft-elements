summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_foerster"]}
loot replace entity @n[tag=spawning_foerster] weapon.mainhand loot elements:items/compressed/wood
data modify storage elements_get_item_data compressed_wood set from entity @n[tag=spawning_foerster] HandItems.[0]
loot replace entity @n[tag=spawning_foerster] weapon.mainhand loot elements:items/element_axe/common
data modify storage elements_get_item_data element_axe_common set from entity @n[tag=spawning_foerster] HandItems.[0]
loot replace entity @n[tag=spawning_foerster] weapon.mainhand loot elements:items/boss_spawing/stage_2
data modify storage elements_get_item_data boss_spawning_stage_2 set from entity @n[tag=spawning_foerster] HandItems.[0]


function elements:villager/spawning/stage_2_final with storage elements_get_item_data

data modify entity @n[tag=foerster] Offers.Recipes.[1].buy.count set value 32
data modify entity @n[tag=foerster] Offers.Recipes.[2].buy.count set value 32

kill @e[tag=spawning_foerster,type=armor_stand]
kill @s
