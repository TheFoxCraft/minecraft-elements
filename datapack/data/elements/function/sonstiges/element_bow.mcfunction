tag @s remove has_element_bow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":1}}}] run tag @s add has_element_bow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":2}}}] run tag @s add has_element_bow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":3}}}] run tag @s add has_element_bow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] run tag @s add has_element_bow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] run tag @s add has_element_bow
execute unless entity @s[tag=has_element_bow] run return fail


execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute at @s run function elements:sonstiges/element_bow/save_slot with storage elements_getid
item replace entity @s inventory.0 with arrow[custom_model_data=1] 1
tag @s add has_element_arrow