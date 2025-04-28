#Stone
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tp_stone
#Sky
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:light_blue_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tp_sky
#Nether
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tp_nether
#Ocean
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blue_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tp_ocean

#Hub 
execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1..2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tp_hub

#mode switch management

execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tps_mode_switch


execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s *[custom_data~{is_enderchest_tp_menu:true}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/tps_next_dimension




#Stats --
execute as @s[scores={elements_enderchest_level_stats=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:lectern[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_stats


#AutoCompact -2
execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:piston[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_autocompact


#UpgradeSchmiede -3
execute as @s[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:anvil[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_upgradeschmiede

#Enderchest -4
execute as @s[scores={elements_enderchest_level_enderchest=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_chest[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_enderchest


#Casino -5
execute as @s[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_casino

#Collections -6
execute as @s[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond_pickaxe[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_collections

#Settings -7
execute as @s[scores={elements_enderchest_level_settings=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:compass[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_settings

#Admin-Settings -8

execute as @s[scores={elements_enderchest_level_settings=0,elements_enderchest_interface_number=1,elements_rank_admin=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:recovery_compass[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_adminsettings

#Shop -9
execute as @s[scores={elements_enderchest_level_shop=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:crafting_table[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_shop

#Handelsplatz -10
execute as @s[scores={elements_enderchest_level_handelsplatz=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:barrel[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/main_menu/ui_clicks/menu_handelsplatz