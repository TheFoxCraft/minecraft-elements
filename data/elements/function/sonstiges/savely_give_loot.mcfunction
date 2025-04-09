execute store result score @s elements_used_inv_slots run data get entity @s Inventory

execute if items entity @s armor.chest * run scoreboard players remove @s elements_used_inv_slots 1
execute if items entity @s armor.legs * run scoreboard players remove @s elements_used_inv_slots 1
execute if items entity @s armor.feet * run scoreboard players remove @s elements_used_inv_slots 1
execute if items entity @s armor.head * run scoreboard players remove @s elements_used_inv_slots 1
execute if items entity @s weapon.offhand * run scoreboard players remove @s elements_used_inv_slots 1

$execute if score @s elements_used_inv_slots matches ..35 run return run loot give @s loot $(id)


$execute at @s run loot spawn ~ ~ ~ loot $(id)
data modify entity @n[type=item,nbt={PickupDelay:10s}] Owner set from entity @s UUID
tag @n[type=item,nbt={PickupDelay:10s}] add gravity_stone_ignore
data modify entity @n[type=item,nbt={PickupDelay:10s}] PickupDelay set value 0