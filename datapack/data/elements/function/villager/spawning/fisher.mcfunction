summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["spawning_fisher"]}
loot replace entity @n[tag=spawning_fisher] weapon.mainhand loot elements:items/compressed/fishing_token
data modify storage elements_get_item_data fishing_token set from entity @n[tag=spawning_fisher] HandItems.[0]


function elements:villager/spawning/fisher_final with storage elements_get_item_data

#data modify entity @n[tag=fisher] Offers.Recipes.[0].sell.count set value 1
#data modify entity @n[tag=fisher] Offers.Recipes.[0].sell.count set value 1

kill @e[tag=spawning_fisher,type=armor_stand]
kill @s
