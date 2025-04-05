
execute as @e[type=fishing_bobber,tag=!elements_has_fishing_bobber] at @s if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["elements_fishing_bobber"]}
execute as @e[type=fishing_bobber,tag=!elements_has_fishing_bobber] at @s if block ~ ~ ~ water on origin run data modify entity @n[type=marker,tag=elements_fishing_bobber] data.UUID set from entity @s UUID
execute as @e[type=fishing_bobber,tag=!elements_has_fishing_bobber] at @s if block ~ ~ ~ water run tag @s add elements_has_fishing_bobber

execute as @e[type=marker,tag=elements_fishing_bobber] at @s run tp @s @n[type=fishing_bobber]

execute as @e[type=marker,tag=elements_fishing_bobber] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:structure_void",components:{"minecraft:custom_model_data":1}}},distance=..0.2,sort=nearest,limit=1] run function elements:miningxp/get_fishing/get_fishing_id with entity @s data
execute as @e[type=marker,tag=elements_fishing_bobber] at @s as @e[type=item,nbt={Item:{id:"minecraft:structure_void",components:{"minecraft:custom_model_data":1}}},distance=..0.2,sort=nearest,limit=1] run kill @s

execute as @e[type=marker,tag=elements_fishing_bobber] at @s unless entity @e[type=fishing_bobber,distance=..0.5] run kill @s

execute as @a[nbt={Inventory:[{id:"minecraft:structure_void",components:{"minecraft:custom_model_data":1}}]}] run function elements:miningxp/get_fishing/get_fishing_id with entity @s
execute as @a[nbt={Inventory:[{id:"minecraft:structure_void",components:{"minecraft:custom_model_data":1}}]}] run clear @s minecraft:structure_void[custom_model_data=1] 1

#debug
execute as @e[type=marker,tag=elements_fishing_bobber] at @s run particle minecraft:flame