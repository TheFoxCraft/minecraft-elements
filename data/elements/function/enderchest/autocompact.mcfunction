execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_click_autocompact_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_click_autocompact_back=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_autocompact_back=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_click_autocompact_back=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_autocompact_back=1}] run scoreboard players set @s elements_enderchest_interface_click_autocompact_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] run item replace entity @s enderchest.22 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=1] 1



execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_click_autocompact_off run clear @s minecraft:red_dye[custom_model_data=1]
execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_click_autocompact_stone_on run clear @s minecraft:stone[custom_model_data=1]
execute as @a[scores={elements_enderchest_level_autocompact=2..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_click_autocompact_holz_on run clear @s minecraft:oak_log[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_click_autocompact_off=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_autocompact_off=1}] run function elements:enderchest/autocompact-reset
execute as @a[scores={elements_enderchest_interface_click_autocompact_stone_on=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_autocompact_stone_on=1}] run function elements:enderchest/autocompact-reset
execute as @a[scores={elements_enderchest_interface_click_autocompact_stone_on=1}] run scoreboard players set @s elements_autocompactor_stone 1
execute as @a[scores={elements_enderchest_interface_click_autocompact_holz_on=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_autocompact_holz_on=1}] run function elements:enderchest/autocompact-reset
execute as @a[scores={elements_enderchest_interface_click_autocompact_holz_on=1}] run scoreboard players set @s elements_autocompactor_wood 1



kill @e[type=item,nbt={Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1,components:{"minecraft:custom_model_data":1}}}]


execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2,elements_autocompactor_stone=0}] run item replace entity @s enderchest.9 with stone[custom_name='{"color":"red","text":"Stone-Auto-Compactor","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}'],custom_model_data=1] 1
execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2,elements_autocompactor_stone=1}] run item replace entity @s enderchest.9 with red_dye[custom_name='{"color":"green","text":"Stone-Auto-Compactor","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}'],custom_model_data=1] 1

execute as @a[scores={elements_enderchest_level_autocompact=2..,elements_enderchest_interface_number=2,elements_autocompactor_wood=0}] run item replace entity @s enderchest.10 with oak_log[custom_name='{"color":"red","text":"Holz-Auto-Compactor","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}'],custom_model_data=1] 1
execute as @a[scores={elements_enderchest_level_autocompact=2..,elements_enderchest_interface_number=2,elements_autocompactor_wood=1}] run item replace entity @s enderchest.10 with red_dye[custom_name='{"color":"green","text":"Holz-Auto-Compactor","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}'],custom_model_data=1] 1





clear @a minecraft:black_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.4 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.26 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1

