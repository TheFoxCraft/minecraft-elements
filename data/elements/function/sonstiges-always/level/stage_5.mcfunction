execute unless items entity @s weapon.mainhand #hoes run return run scoreboard players remove @s elements_level_melon 1

execute if score .server elements_stage matches 5.. if score @s elements_homedimension = @s elements_dimension run xp add @s 13 levels
execute if score .server elements_stage matches 5.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s 13 levels
execute as @s[scores={elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 4.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-5 1

execute as @s[nbt={SelectedItem:{id:"minecraft:iron_hoe",components:{"minecraft:custom_model_data":1}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:5}}



#execute as @s[nbt={Inventory:[{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":2}}]}] at @n[type=item,nbt={Item:{id:"minecraft:melon"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/melon


execute if score .server elements_uniqueitem_melonengolemschale matches 0 run function elements:uniques/trigger/melonengolemschale/random

scoreboard players remove @s elements_level_melon 1
function elements:sonstiges/element_shards/trigger

#levetrank
execute as @s[scores={elements_custom-items_shop_leveltrank_counter_stage-5=10..}] run xp add @s 10 levels
execute as @s[scores={elements_custom-items_shop_leveltrank_counter_stage-5=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-5 10


#unique
execute as @s[nbt={Inventory:[{id:"minecraft:feather",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_level_unique_addition 1

execute if score @s elements_level_unique_addition matches 10.. run xp add @s 13 levels
execute if score @s elements_level_unique_addition matches 10.. run scoreboard players remove @s elements_level_unique_addition 10