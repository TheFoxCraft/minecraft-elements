#Stone
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:stone run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.21 with gray_stained_glass_pane[custom_name='{"color":"gray","text":"Stone Block","italic": false}',custom_model_data=2] 1

#Sky
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:light_blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:sky run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.23 with light_blue_stained_glass_pane[custom_name='{"color":"blue","text":"Sky Block","italic": false}',custom_model_data=2] 1

#Nether
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:nether run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.24 with red_stained_glass_pane[custom_name='{"color":"red","text":"Nether Block","italic": false}',custom_model_data=2] 1

#Ocean
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:ocean run tp @s 0 61 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[custom_name='{"color":"dark_blue","text":"Ocean Block","italic": false}',custom_model_data=2] 1

#Hub 
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1..2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:hub run tp @s 0 101 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.22 with nether_star[custom_name='{"color":"dark_purple","text":"HUB","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2}] run item replace entity @s enderchest.23 with nether_star[custom_name='{"color":"dark_purple","text":"HUB","italic": false}',custom_model_data=1] 1

#mode switch management

execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] in elements:stone run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] in elements:sky run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=2}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] in elements:nether run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=3}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] in elements:ocean run tp @s 0 61 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=4}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] in elements:hub run tp @s 0 101 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_settings_dimension=5}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:light_blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_settings_dimension=5..,elements_enderchest_settings_tp-mode=2}] run scoreboard players set @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_settings_dimension=6..,elements_enderchest_settings_tp-mode=3}] run scoreboard players set @s elements_enderchest_settings_dimension 1

execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=1}] run item replace entity @s enderchest.21 with gray_stained_glass_pane[custom_name='{"color":"gray","text":"Stone Block","italic": false}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=2}] run item replace entity @s enderchest.21 with light_blue_stained_glass_pane[custom_name='{"color":"blue","text":"Sky Block","italic": false}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=3}] run item replace entity @s enderchest.21 with red_stained_glass_pane[custom_name='{"color":"red","text":"Nether Block","italic": false}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=4}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[custom_name='{"color":"dark_blue","text":"Ocean Block","italic": false}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=3,elements_enderchest_settings_dimension=5}] run item replace entity @s enderchest.21 with nether_star[custom_name='{"color":"dark_purple","text":"HUB","italic": false}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=2..3}] run item replace entity @s enderchest.22 with ender_pearl[custom_name='{"color":"dark_purple","text":"Teleport!","italic": false}',custom_model_data=1] 1



#Stats --
execute as @a[scores={elements_enderchest_level_stats=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:lectern[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run tellraw @s {"text": "Status aktualisiert!","color": "gold"}
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/stats
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:custom-items/show-stats
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_stats=1,elements_enderchest_interface_number=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:lectern",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/stats
kill @e[type=item,nbt={Item:{id:"minecraft:lectern",count:1,components:{"minecraft:custom_model_data":1}}}]


#AutoCompact -2
execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:piston[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 2
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:piston",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=1}] run item replace entity @s enderchest.0 with piston[custom_name='{"color":"gray","text":"Auto-Compactor","italic": false}',custom_model_data=1] 1


#UpgradeSchmiede -3
execute as @a[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:anvil[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 3
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=1}] run item replace entity @s enderchest.8 with anvil[custom_name='{"color":"dark_purple","text":"Upgrade Schmiede","italic": false}',custom_model_data=1] 1


#Enderchest -4
execute as @a[scores={elements_enderchest_level_enderchest=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_chest[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 4
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-enderchest-load with storage elements_getid
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ender_chest",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_enderchest=1,elements_enderchest_interface_number=1}] run item replace entity @s enderchest.2 with ender_chest[custom_name='{"color":"dark_purple","text":"Enderchest","italic": false}',custom_model_data=1] 1


#Casino -5
execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 5
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=1}] run item replace entity @s enderchest.10 with diamond[custom_name='{"color":"gold","text":"Casino","italic": false}',custom_model_data=1] 1


#Collections -6
execute as @a[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond_pickaxe[custom_model_data=5]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 6
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_model_data":5}}}]
execute as @a[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=1..2}] run item replace entity @s enderchest.13 with diamond_pickaxe[custom_name='{"color":"blue","text":"Collections","italic": false}',custom_model_data=5,attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1
execute as @a[scores={elements_enderchest_level_collections=1,elements_enderchest_interface_number=1,elements_enderchest_settings_tp-mode=3}] run item replace entity @s enderchest.23 with diamond_pickaxe[custom_name='{"color":"blue","text":"Collections","italic": false}',custom_model_data=5,attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1

#Settings -7
execute as @a[scores={elements_enderchest_level_settings=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:compass[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 7
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_settings=1,elements_enderchest_interface_number=1}] run item replace entity @s enderchest.18 with compass[custom_name='{"color":"gold","text":"Settings","italic": false}',custom_model_data=1] 1

#Admin-Settings -8

execute as @a[scores={elements_enderchest_level_settings=0,elements_enderchest_interface_number=1,elements_rank_admin=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:recovery_compass[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 8
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_settings=0,elements_enderchest_interface_number=1,elements_rank_admin=1}] run item replace entity @s enderchest.18 with recovery_compass[custom_name='{"color":"light_purple","text":"Admin-Settings","italic": false}',custom_model_data=2] 1

#Shop -9
execute as @a[scores={elements_enderchest_level_shop=1,elements_enderchest_interface_number=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:crafting_table[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 9
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/load
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:piston",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_shop=1,elements_enderchest_interface_number=1}] run item replace entity @s enderchest.6 with crafting_table[custom_name='{"color":"gold","text":"Shop","italic": false}',custom_model_data=1] 1
