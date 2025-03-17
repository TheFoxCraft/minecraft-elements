#Stone
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:stone run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.21 with gray_stained_glass_pane[custom_name='{"color":"gray","text":"Stone Block"}',custom_model_data=2] 1

#Sky
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:light_blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:sky run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.23 with light_blue_stained_glass_pane[custom_name='{"color":"blue","text":"Sky Block"}',custom_model_data=2] 1

#Nether
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:nether run tp @s 0 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.24 with red_stained_glass_pane[custom_name='{"color":"red","text":"Nether Block"}',custom_model_data=2] 1

#Ocean
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:ocean run tp @s 0 61 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[custom_name='{"color":"dark_blue","text":"Ocean Block"}',custom_model_data=2] 1

#Hub 
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1..2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] in elements:hub run tp @s 0 101 0
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[scores={elements_enderchest_interface_clicked=1}] run xp add @s 0 points
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=1}] run item replace entity @s enderchest.22 with nether_star[custom_name='{"color":"dark_purple","text":"HUB"}',custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2}] run item replace entity @s enderchest.23 with nether_star[custom_name='{"color":"dark_purple","text":"HUB"}',custom_model_data=1] 1

#mode switch management

execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=1]
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

execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_star[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:light_blue_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_enderchest_settings_dimension=5..,elements_enderchest_settings_tp-mode=2}] run scoreboard players set @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_enderchest_settings_dimension=6..,elements_enderchest_settings_tp-mode=3}] run scoreboard players set @s elements_enderchest_settings_dimension 1

execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=1}] run item replace entity @s enderchest.21 with gray_stained_glass_pane[custom_name='{"color":"gray","text":"Stone Block"}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=2}] run item replace entity @s enderchest.21 with light_blue_stained_glass_pane[custom_name='{"color":"blue","text":"Sky Block"}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=3}] run item replace entity @s enderchest.21 with red_stained_glass_pane[custom_name='{"color":"red","text":"Nether Block"}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=1..2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3,elements_enderchest_settings_dimension=4}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[custom_name='{"color":"dark_blue","text":"Ocean Block"}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=3,elements_enderchest_settings_dimension=5}] run item replace entity @s enderchest.21 with nether_star[custom_name='{"color":"dark_purple","text":"HUB"}',custom_model_data=2] 1
execute as @a[scores={elements_enderchest_level_tp=2,elements_enderchest_interface_number=8,elements_enderchest_settings_tp-mode=2..3}] run item replace entity @s enderchest.22 with ender_pearl[custom_name='{"color":"dark_purple","text":"Teleport!"}',custom_model_data=1] 1
