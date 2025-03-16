#string

#nothing to do

#sticks
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] at @s if block ~ ~ ~ stonecutter run particle minecraft:electric_spark ~ ~0.3 ~ 0.1 0.1 0.1 0 10 force
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] at @s if block ~ ~ ~ stonecutter run scoreboard players add @s elements_custom-items_fishing_rod_crafting_sticks_cooldown 1

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] at @s unless block ~ ~ ~ stonecutter run scoreboard players set @s elements_custom-items_fishing_rod_crafting_sticks_cooldown 0


execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick_1] at @s if block ~ ~ ~ stonecutter run data modify entity @s Motion set value [0.1d,0.3d,0d]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick_2] at @s if block ~ ~ ~ stonecutter run data modify entity @s Motion set value [-0.05d,0.3d,0.087d]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick_3] at @s if block ~ ~ ~ stonecutter run data modify entity @s Motion set value [-0.05d,0.3d,-0.087d]

execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick_1] at @s run particle electric_spark ~ ~0.3 ~ 0.1 0.1 0.1 0 10 force
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick_2] at @s run particle electric_spark ~ ~0.3 ~ 0.1 0.1 0.1 0 10 force
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick_3] at @s run particle electric_spark ~ ~0.3 ~ 0.1 0.1 0.1 0 10 force
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick] at @s unless block ~ ~ ~ stonecutter run data modify entity @s Item.components."minecraft:max_stack_size" set value 3
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stick",components:{"minecraft:custom_model_data":2}}},tag=elements_fishing_crafting_stick] at @s unless block ~ ~ ~ stonecutter run tag @s remove elements_fishing_crafting_stick


execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run summon armor_stand ~ ~ ~ {NoAI:true,Invisible:true,Invulnerable:true,Tags:["elements_fishing_crafting_stick"]}

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run loot replace entity @n[tag=elements_fishing_crafting_stick,type=armor_stand] weapon.mainhand loot elements:items/fishing/fishing_rod_ingredients/stick
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run data modify entity @n[type=armor_stand,tag=elements_fishing_crafting_stick] HandItems[0].components."minecraft:max_stack_size" set value 1
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run summon item ~ ~ ~ {Item:{id:"stick"},Tags:["elements_fishing_crafting_stick_1","elements_fishing_crafting_stick"]}
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run data modify entity @n[tag=elements_fishing_crafting_stick_1,type=item] Item set from entity @n[tag=elements_fishing_crafting_stick,type=armor_stand] HandItems.[0]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run summon item ~ ~ ~ {Item:{id:"stick"},Tags:["elements_fishing_crafting_stick_2","elements_fishing_crafting_stick"]}
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run data modify entity @n[tag=elements_fishing_crafting_stick_2,type=item] Item set from entity @n[tag=elements_fishing_crafting_stick,type=armor_stand] HandItems.[0]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run summon item ~ ~ ~ {Item:{id:"stick"},Tags:["elements_fishing_crafting_stick_3","elements_fishing_crafting_stick"]}
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run data modify entity @n[tag=elements_fishing_crafting_stick_3,type=item] Item set from entity @n[tag=elements_fishing_crafting_stick,type=armor_stand] HandItems.[0]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run playsound entity.generic.explode master @a[distance=..10]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run particle explosion ~ ~ ~ 0 0 0 0 5 force


execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run kill @n[type=armor_stand,tag=elements_fishing_crafting_stick]
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_fishing_rod_crafting_sticks_cooldown=60..}] at @s if block ~ ~ ~ stonecutter run kill @s



#hook

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run particle explosion ~ ~0.5 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run playsound entity.generic.explode master @a[distance=..10]
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run loot spawn ~ ~ ~ loot elements:items/fishing/fishing_rod_ingredients/hook
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run tag @n[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..0.3] add elements_fishing_crafting_hook_kill
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run tag @n[type=item,nbt={Item:{id:"minecraft:oak_planks"}},distance=..0.3] add elements_fishing_crafting_hook_kill
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run tag @s add elements_fishing_crafting_hook_kill
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"},OnGround:true}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:stick"},OnGround:true},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"},OnGround:true},distance=..0.3] run kill @e[tag=elements_fishing_crafting_hook_kill,distance=..0.3,limit=3]


#final crafting

# code hierfür steht in villager-file von clementius