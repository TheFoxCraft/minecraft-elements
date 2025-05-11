execute if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s 10 points
execute if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s 10 points
execute as @s[scores={elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-1 1
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:2}}
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:3}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:2}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:3}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:4}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:5}}
execute as @s[nbt={Inventory:[{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":2}}]}] at @n[type=item,nbt={Item:{id:"minecraft:basalt",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute if score .server elements_uniqueitem_planetenkern matches 0 run function elements:uniques/trigger/planetenkern/random
scoreboard players set @s elements_level_stone_basalt 0

#leveltrank
execute as @s[scores={elements_custom-items_shop_leveltrank_counter_stage-1=10..}] run xp add @s 10 points
execute as @s[scores={elements_custom-items_shop_leveltrank_counter_stage-1=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-1 10


#unique
execute as @s[nbt={Inventory:[{id:"minecraft:pointed_dripstone",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_level_unique_addition 1

execute if score @s elements_level_unique_addition matches 10.. run xp add @s 10 points
execute if score @s elements_level_unique_addition matches 10.. run scoreboard players remove @s elements_level_unique_addition 10