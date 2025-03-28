
#1 Mainmenu
#2 Stage 1
#3 Stage 2

execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_admin_config_tipps_interface=2}] run function elements:enderchest/admin-settings/raetsel_tipps/stage_1
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_admin_config_tipps_interface=3}] run function elements:enderchest/admin-settings/raetsel_tipps/stage_2


execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_admin_config_tipps_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:stone[custom_model_data=10]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_tipps_interface 2
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_admin_config_tipps_interface=1}] if score .server elements_setup matches 2.. run item replace entity @s enderchest.9 with stone[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.stage_1.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.stage_1.description","color": "gray","italic": false}'],custom_model_data=10] 1

execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_admin_config_tipps_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:spruce_log[custom_model_data=12]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_tipps_interface 3
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_admin_config_tipps_interface=1}] if score .server elements_setup matches 2.. run item replace entity @s enderchest.10 with spruce_log[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.stage_2.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.stage_2.description","color": "gray","italic": false}'],custom_model_data=12] 1








execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.4 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.22 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
