execute unless items entity @s weapon.mainhand #shovels run return run scoreboard players remove @s elements_level_cocoa 1

execute if score .server elements_stage matches 6.. if score @s elements_homedimension = @s elements_dimension run xp add @s 30 levels
execute if score .server elements_stage matches 6.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s 30 levels
execute as @s[scores={elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 6.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-6 1

execute as @s[nbt={SelectedItem:{id:"minecraft:iron_shovel",components:{"minecraft:custom_model_data":1}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans

execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans

execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans

execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans

execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans

execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans

execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans



#execute as @s[nbt={Inventory:[{id:"minecraft:cocoa_beans",components:{"minecraft:custom_model_data":10}}]}] at @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":1}}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_6/cocoa_beans


execute if score .server elements_uniqueitem_kakao_pulver matches 0 run function elements:uniques/trigger/kakao_pulver/random

scoreboard players remove @s elements_level_cocoa 1
function elements:sonstiges/element_shards/trigger

#levetrank
execute as @s[scores={elements_custom-items_shop_leveltrank_counter_stage-6=10..}] run xp add @s 30 levels
execute as @s[scores={elements_custom-items_shop_leveltrank_counter_stage-6=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-6 10


#unique
execute as @s[nbt={Inventory:[{id:"minecraft:pointed_dripstone",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_level_unique_addition 1

execute if score @s elements_level_unique_addition matches 10.. run xp add @s 30 levels
execute if score @s elements_level_unique_addition matches 10.. run scoreboard players remove @s elements_level_unique_addition 10