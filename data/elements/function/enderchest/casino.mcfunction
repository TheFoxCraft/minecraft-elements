


execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1}] store result score @s elements_enderchest_interface_click_casino_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=4]
execute as @a[scores={elements_enderchest_interface_click_casino_back=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_casino_back=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_click_casino_back=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_casino_back=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=4] 1


execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1}] store result score @s elements_enderchest_interface_click_casino_stats run clear @s minecraft:lectern[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_casino_stats=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_casino_stats=1}] run tellraw @s {"text": "Casino-Stats aktualisiert!","color":"gold"}
kill @e[type=item,nbt={Item:{id:"minecraft:lectern",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:lectern",Slot:19b,components:{"minecraft:custom_model_data":2}}]}] run function elements:enderchest/casino/stats


execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1}] store result score @s elements_enderchest_interface_click_casino_horse run clear @s minecraft:diamond_horse_armor[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_casino_horse=1,elements_mainlevel=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_casino_horse=1}] run scoreboard players set @s elements_casino_game 1
execute as @a[scores={elements_enderchest_interface_click_casino_horse=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_casino_horse=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_horse 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_horse_armor",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1,elements_casino_game=0}] run item replace entity @s enderchest.1 with diamond_horse_armor[custom_name='{"color":"gold","text":"Pferde-Rennen","italic": false}',lore=['{"color":"gray","text":"Setze auf eines der Drei Pferde,","italic": false}','{"color":"gray","text":"Die Pferde starten danach ihr Rennen","italic": false}','{"color":"gray","text":"links, du gewinnst, wenn","italic": false}','{"color":"gray","text":"du auf das Pferd getippt hast, das","italic": false}','{"color":"gray","text":"zuerst rechts ankommt.","italic": false}','{"color":"gray","text":"Gewinn: 3x Einsatz","italic": false}'],hide_additional_tooltip={},custom_model_data=2,attribute_modifiers={modifiers:[],show_in_tooltip:false}] 1


execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1}] store result score @s elements_enderchest_interface_click_casino_luckywheel run clear @s minecraft:music_disc_stal[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel=1,elements_mainlevel=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel=1}] run scoreboard players set @s elements_casino_game 2
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_luckywheel 0
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_stal",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_level_casino=1,elements_enderchest_interface_number=5,elements_casino_interface=1,elements_casino_game=0}] run item replace entity @s enderchest.7 with music_disc_stal[custom_name='{"color":"gold","text":"Glücksrad","italic": false}',lore=['{"color":"gray","text":"Das Glücksrad ist Oval, der Hauptgewinn dreht sich ","italic": false}','{"color":"gray","text":"an den äußeren Slots im Kreis, klicke, um das","italic": false}','{"color":"gray","text":"Glücksrad langsam zu stoppen.","italic": false}','{"color":"gray","text":"Bleibt der Hauptgewinn in der Mitte stehen, gewinnst du.","italic": false}','{"color":"gray","text":"Gewinn: 10x Einsatz","italic": false}'],hide_additional_tooltip={},custom_model_data=1,jukebox_playable={song:"minecraft:pigstep",show_in_tooltip:false}] 1



# 1= jedes mal neu
# 2= fester einsatz
# 3= random

execute as @a[scores={elements_casino_game=1..,elements_casino_config_einsatz=1,elements_mainlevel=1..,elements_casino_interface=1}] run scoreboard players set @s elements_casino_interface 2
execute as @a[scores={elements_casino_game=1..,elements_mainlevel=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_casino_game=1..,elements_mainlevel=0}] run scoreboard players set @s elements_casino_game 0



#execute as @a[scores={elements_casino_interface_load=1..}] run function elements:enderchest/casino/interface-load






## einsatz festlegen

clear @a minecraft:oak_hanging_sign[custom_model_data=2]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":2}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:charcoal",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":10}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":11}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":12}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":13}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":14}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":15}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":16}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":17}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":18}}}]


execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_err run clear @s minecraft:charcoal[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_err=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_err=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_err 0

execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_1 run clear @s minecraft:diamond[custom_model_data=10]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_2 run clear @s minecraft:diamond[custom_model_data=11]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_3 run clear @s minecraft:diamond[custom_model_data=12]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_4 run clear @s minecraft:diamond[custom_model_data=13]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_5 run clear @s minecraft:diamond[custom_model_data=14]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_6 run clear @s minecraft:diamond[custom_model_data=15]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_7 run clear @s minecraft:diamond[custom_model_data=16]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_8 run clear @s minecraft:diamond[custom_model_data=17]
execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_9 run clear @s minecraft:diamond[custom_model_data=18]






execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_1=1}] run scoreboard players set @s elements_casino_game_einsatz 1
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_2=1}] run scoreboard players set @s elements_casino_game_einsatz 5
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_3=1}] run scoreboard players set @s elements_casino_game_einsatz 10
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_4=1}] run scoreboard players set @s elements_casino_game_einsatz 50
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_5=1}] run scoreboard players set @s elements_casino_game_einsatz 100
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_6=1}] run scoreboard players set @s elements_casino_game_einsatz 500
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_7=1}] run scoreboard players set @s elements_casino_game_einsatz 1000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_8=1}] run scoreboard players set @s elements_casino_game_einsatz 5000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_9=1}] run scoreboard players set @s elements_casino_game_einsatz 10000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_1=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 1
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_2=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 5
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_3=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 10
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_4=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 50
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_5=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 100
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_6=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 500
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_7=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 1000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_8=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 5000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_9=1}] run scoreboard players add @s elements_casino_stats_lvlinvestiert 10000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_1=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 1
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_2=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 5
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_3=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 10
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_4=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 50
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_5=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 100
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_6=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 500
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_7=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 1000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_8=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 5000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_9=1}] run scoreboard players add #server elements_casino_stats_lvlinvestiert 10000
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_1=1}] run xp add @s -1 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_2=1}] run xp add @s -5 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_3=1}] run xp add @s -10 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_4=1}] run xp add @s -50 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_5=1}] run xp add @s -100 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_6=1}] run xp add @s -500 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_7=1}] run xp add @s -1000 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_8=1}] run xp add @s -5000 levels
execute as @a[scores={elements_casino_interface=2,elements_enderchest_interface_click_casino_einsatz_9=1}] run xp add @s -10000 levels
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_1=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_2=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_3=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_4=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_5=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_6=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_7=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_8=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_9=1}] run function elements:enderchest/casino/einsatz-addition
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_1=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_1 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_2=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_2 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_3=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_3 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_4=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_4 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_5=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_5 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_6=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_6 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_7=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_7 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_8=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_8 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_9=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_9 0



execute as @a[scores={elements_casino_interface=2,elements_mainlevel=1..}] run item replace entity @s enderchest.9 with diamond[custom_name='{"color":"green","text":"1 Level","italic": false}',custom_model_data=10] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=5..}] run item replace entity @s enderchest.10 with diamond[custom_name='{"color":"green","text":"5 Level","italic": false}',custom_model_data=11] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=10..}] run item replace entity @s enderchest.11 with diamond[custom_name='{"color":"green","text":"10 Level","italic": false}',custom_model_data=12] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=50..}] run item replace entity @s enderchest.12 with diamond[custom_name='{"color":"green","text":"50 Level","italic": false}',custom_model_data=13] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=100..}] run item replace entity @s enderchest.13 with diamond[custom_name='{"color":"green","text":"100 Level","italic": false}',custom_model_data=14] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=500..}] run item replace entity @s enderchest.14 with diamond[custom_name='{"color":"green","text":"500 Level","italic": false}',custom_model_data=15] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=1000..}] run item replace entity @s enderchest.15 with diamond[custom_name='{"color":"green","text":"1000 Level","italic": false}',custom_model_data=16] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=5000..}] run item replace entity @s enderchest.16 with diamond[custom_name='{"color":"green","text":"5000 Level","italic": false}',custom_model_data=17] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=10000..}] run item replace entity @s enderchest.17 with diamond[custom_name='{"color":"green","text":"10000 Level","italic": false}',custom_model_data=18] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..4}] run item replace entity @s enderchest.10 with charcoal[custom_name='{"color":"gray","text":"5 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..9}] run item replace entity @s enderchest.11 with charcoal[custom_name='{"color":"gray","text":"10 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..49}] run item replace entity @s enderchest.12 with charcoal[custom_name='{"color":"gray","text":"50 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..99}] run item replace entity @s enderchest.13 with charcoal[custom_name='{"color":"gray","text":"100 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..499}] run item replace entity @s enderchest.14 with charcoal[custom_name='{"color":"gray","text":"500 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..999}] run item replace entity @s enderchest.15 with charcoal[custom_name='{"color":"gray","text":"1000 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..4999}] run item replace entity @s enderchest.16 with charcoal[custom_name='{"color":"gray","text":"5000 Level","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=2,elements_mainlevel=..9999}] run item replace entity @s enderchest.17 with charcoal[custom_name='{"color":"gray","text":"10000 Level","italic": false}',custom_model_data=1] 1





execute as @a[scores={elements_casino_interface=2}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"gold","text":"Wähle Deinen Einsatz:","italic": false}',custom_model_data=2] 1

execute as @a[scores={elements_casino_interface=2}] store result score @s elements_enderchest_interface_click_casino_einsatz_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=5] 1
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_back=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_back=1}] run scoreboard players set @s elements_casino_interface 1
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_back=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_back=1}] run scoreboard players set @s elements_casino_game 0
execute as @a[scores={elements_enderchest_interface_click_casino_einsatz_back=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_einsatz_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":5}}}]
execute as @a[scores={elements_casino_interface=2}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=5] 1






