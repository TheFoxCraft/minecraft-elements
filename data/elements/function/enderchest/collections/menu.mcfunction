execute as @a[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=6,elements_collections_interface=1}] store result score @s elements_enderchest_interface_click_collections_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=4]
execute as @a[scores={elements_enderchest_interface_click_collections_back=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_collections_back=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_click_collections_back=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_collections_back=1}] run scoreboard players set @s elements_enderchest_interface_click_collections_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @a[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück"}',custom_model_data=4] 1

clear @a minecraft:black_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
clear @a minecraft:oak_hanging_sign[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]

kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":5}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1,components:{"minecraft:custom_model_data":10}}}]


execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.22 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1


execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"gold","italic":false,"text":"Collections"}',lore=['{"color":"gray","italic":false,"text":"Ereiche Meilensteine beim Farmen"}','{"color":"gray","italic":false,"text":"für gewisse Belohnungen!"}'],custom_model_data=1] 1


execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] store success score @s elements_enderchest_interface_click_collections_stone run clear @s cobblestone[custom_model_data=10]
execute as @a[scores={elements_enderchest_interface_click_collections_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_collections_stone=1}] run scoreboard players set @s elements_collections_interface 2
execute as @a[scores={elements_enderchest_interface_click_collections_stone=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_collections_stone=1}] run scoreboard players set @s elements_enderchest_interface_click_collections_stone 0

execute as @a[scores={elements_enderchest_interface_number=6,elements_collections_interface=1}] if score #server elements_stage matches 1.. run item replace entity @s enderchest.9 with cobblestone[custom_name='{"color":"gold","italic":false,"text":"Stein"}',custom_model_data=10] 1

