execute at @s run loot spawn ~ ~ ~ loot elements:items/shops/ocean/bossfrucht/stage_1
data modify entity @n[type=item,nbt={PickupDelay:10s}] Owner set from entity @s UUID
tag @n[type=item,nbt={PickupDelay:10s}] add gravity_stone_ignore
data modify entity @n[type=item,nbt={PickupDelay:10s}] PickupDelay set value 0