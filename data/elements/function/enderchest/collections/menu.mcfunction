execute as @s[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=6}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_collections_interface=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_collections_interface=2..}] run scoreboard players set @s elements_collections_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @s[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=6}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=1] 1

clear @s minecraft:black_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
clear @s minecraft:oak_hanging_sign[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]

kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":5}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:weeping_vines",count:1,components:{"minecraft:custom_model_data":10}}}]

kill @e[type=item,nbt={Item:{id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":11}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":12}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":13}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":14}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":15}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":16}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":17}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":18}}}]



execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.4 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.22 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=6}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1

execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"gold","italic":false,"text":"Collections"}',lore=['{"color":"gray","italic":false,"text":"Ereiche Meilensteine beim Farmen"}','{"color":"gray","italic":false,"text":"für gewisse Belohnungen!"}'],custom_model_data=1] 1




# collection clickables

#pre
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.9 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.10 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.11 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.12 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.13 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.14 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.15 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.16 with air
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.17 with air

#stage 1
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] store success score @s elements_enderchest_interface_clicked run clear @s cobblestone[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_collections_interface 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] if score .server elements_stage matches 1.. run item replace entity @s enderchest.9 with cobblestone[custom_name='{"color":"gold","italic":false,"text":"Stein"}',custom_model_data=10] 1

#stage 2
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] store success score @s elements_enderchest_interface_clicked run clear @s spruce_log[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_collections_interface 3
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] if score .server elements_stage matches 2.. run item replace entity @s enderchest.10 with spruce_log[custom_name='{"color":"gold","italic":false,"text":"Holz"}',custom_model_data=10] 1

#stage 3
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] store success score @s elements_enderchest_interface_clicked run clear @s weeping_vines[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_collections_interface 4
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] if score .server elements_stage matches 3.. run item replace entity @s enderchest.11 with weeping_vines[custom_name='{"color":"gold","italic":false,"text":"Crimson Vines"}',custom_model_data=10] 1


# collections

execute as @s[scores={elements_collections_interface=2}] run function elements:enderchest/collections/stone
execute as @s[scores={elements_collections_interface=3}] run function elements:enderchest/collections/wood
execute as @s[scores={elements_collections_interface=4}] run function elements:enderchest/collections/crimson_vines