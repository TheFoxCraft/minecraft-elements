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
execute as @s[scores={elements_enderchest_interface_clicked=1}] store result storage elements_rotation_dimension ocean int 1 run scoreboard players get @s elements_enderchest_settings_rotation_ocean
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/settings/dimension_rotation/ocean_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

#Hub 
execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1..2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] store result storage elements_rotation_dimension hub int 1 run scoreboard players get @s elements_enderchest_settings_rotation_hub
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/settings/dimension_rotation/hub_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

#mode switch management

execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] run function elements:enderchest/settings/dimension_rotation/stone_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] run function elements:enderchest/settings/dimension_rotation/sky_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] run function elements:enderchest/settings/dimension_rotation/nether_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] run function elements:enderchest/settings/dimension_rotation/ocean_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] run function elements:enderchest/settings/dimension_rotation/hub_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] run xp add @s 0 points
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blue_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:light_blue_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_settings_dimension=5..,elements_enderchest_settings_tp-mode=2}] run scoreboard players set @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_enderchest_settings_dimension=6..,elements_enderchest_settings_tp-mode=3}] run scoreboard players set @s elements_enderchest_settings_dimension 1

execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=1}] run item replace entity @s enderchest.21 with gray_stained_glass_pane[custom_name='{"color":"gray","text":"Stone Block","italic": false}',custom_model_data=2] 1
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=2}] run item replace entity @s enderchest.21 with light_blue_stained_glass_pane[custom_name='{"color":"blue","text":"Sky Block","italic": false}',custom_model_data=2] 1
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=3}] run item replace entity @s enderchest.21 with red_stained_glass_pane[custom_name='{"color":"red","text":"Nether Block","italic": false}',custom_model_data=2] 1
execute as @s[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=4}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[custom_name='{"color":"dark_blue","text":"Ocean Block","italic": false}',custom_model_data=2] 1



#Stats --
execute as @s[scores={elements_enderchest_level_stats=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:lectern[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s {"text": "Status aktualisiert!","color": "gold"}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/stats
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:custom-items/show-stats
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_level_stats=1,elements_enderchest_interface_number=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:lectern",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/stats


#AutoCompact -2
execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:piston[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0


#UpgradeSchmiede -3
execute as @s[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:anvil[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 3
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0


#Enderchest -4
execute as @s[scores={elements_enderchest_level_enderchest=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_chest[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 4
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-enderchest-load with storage elements_getid
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0


#Casino -5
execute as @s[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 5
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0


#Collections -6
execute as @s[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond_pickaxe[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 6
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

#Settings -7
execute as @s[scores={elements_enderchest_level_settings=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:compass[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 7
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_settings_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

#Admin-Settings -8

execute as @s[scores={elements_enderchest_level_settings=0,elements_enderchest_interface_number=1,elements_rank_admin=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:recovery_compass[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 8
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

#Shop -9
execute as @s[scores={elements_enderchest_level_shop=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:crafting_table[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 9
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/load
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0


#Handelsplatz -10
execute as @s[scores={elements_enderchest_level_handelsplatz=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:barrel[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_interface 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_page 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_buy_locked 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/load
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
