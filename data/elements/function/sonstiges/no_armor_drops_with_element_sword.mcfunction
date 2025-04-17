

execute on attacker run tag @s remove has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",components:{"minecraft:custom_model_data":1}}}] run tag @s add has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}}] run tag @s add has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}}] run tag @s add has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}}] run tag @s add has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}}] run tag @s add has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}}] run tag @s add has_element_sword
execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":5}}}] run tag @s add has_element_sword
execute on attacker if entity @s[tag=!has_element_sword] run return fail

data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]
data modify entity @s HandDropChances set value [0f,0f]