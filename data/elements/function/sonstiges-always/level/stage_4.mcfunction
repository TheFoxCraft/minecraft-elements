execute if score .server elements_stage matches 4.. if score @s elements_homedimension = @s elements_dimension run xp add @s 10 levels
execute if score .server elements_stage matches 4.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s 10 levels
execute as @s[scores={elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 4.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-4 1

execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":1}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries

execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":2}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries

execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":3}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries

execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries

execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] at @s at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries


#execute as @s[nbt={Inventory:[{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":2}}]}] at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries


#execute if score .server elements_uniqueitem_fragment_der_himmelswarze matches 0 run function elements:uniques/trigger/fragment_der_himmelswarze/random

scoreboard players remove @s elements_level_sweet_berries 1
function elements:sonstiges/element_shards/trigger