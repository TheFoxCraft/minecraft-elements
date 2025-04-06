#load menu

execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players set @s elements_casino_interface 3
execute as @s[scores={elements_casino_game_horse_load=1}] run function elements:enderchest/enderchest-clear

execute as @s[scores={elements_casino_interface=3}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"gold","text":"Setze deinen Einsatz auf ein Pferd:","italic": false}',custom_model_data=3] 1
clear @s minecraft:oak_hanging_sign[custom_model_data=3]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":3}}}]

execute as @s[scores={elements_casino_game_horse_load=1}] store result score @s elements_casino_game_horse_names run random value 1..25


execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players set @s elements_casino_game_horse_pos_1 12
execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players set @s elements_casino_game_horse_pos_2 13
execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players set @s elements_casino_game_horse_pos_3 14

execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players set @s elements_casino_game_horse_win_timer 0
execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players set @s elements_casino_game_horse_timer 0


execute as @s[scores={elements_casino_game_horse_load=1}] run execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_casino_game_horse_load=1}] run function elements:enderchest/casino/horse/horse-load with storage elements_getid
execute as @s[scores={elements_casino_game_horse_load=2}] run function elements:enderchest/casino/horse/horse-set2 with storage elements_getid
execute as @s[scores={elements_casino_game_horse_load=2}] run scoreboard players set @s elements_casino_game_horse_load 0
execute as @s[scores={elements_casino_game_horse_load=1}] run scoreboard players add @s elements_casino_game_horse_load 1


#interface-load

execute as @s[scores={elements_casino_game_horse_load=4..5}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_casino_game_horse_load=4}] run scoreboard players set @s elements_casino_game_horse_pos_1 0
execute as @s[scores={elements_casino_game_horse_load=4}] run scoreboard players set @s elements_casino_game_horse_pos_2 9
execute as @s[scores={elements_casino_game_horse_load=4}] run scoreboard players set @s elements_casino_game_horse_pos_3 18
execute as @s[scores={elements_casino_game_horse_load=4..5}] run execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_casino_game_horse_load=4}] run function elements:enderchest/casino/horse/horse-load with storage elements_getid
execute as @s[scores={elements_casino_game_horse_load=5}] run function elements:enderchest/casino/horse/horse-set2 with storage elements_getid
execute as @s[scores={elements_casino_game_horse_load=4}] run scoreboard players set @s elements_casino_interface 4
execute as @s[scores={elements_casino_game_horse_load=5}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_casino_game_horse_load=5}] run item replace entity @s enderchest.0 with iron_horse_armor[custom_model_data=1]
execute as @s[scores={elements_casino_game_horse_load=5}] run item replace entity @s enderchest.9 with golden_horse_armor[custom_model_data=1]
execute as @s[scores={elements_casino_game_horse_load=5}] run item replace entity @s enderchest.18 with diamond_horse_armor[custom_model_data=1]
execute as @s[scores={elements_casino_game_horse_load=5}] run scoreboard players set @s elements_casino_game_horse_load 0
execute as @s[scores={elements_casino_game_horse_load=4}] run scoreboard players add @s elements_casino_game_horse_load 1



#menu


kill @e[type=item,nbt={Item:{id:"minecraft:iron_horse_armor",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:golden_horse_armor",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_horse_armor",count:1,components:{"minecraft:custom_model_data":1}}}]

execute as @s[scores={elements_casino_interface=3}] run scoreboard players set @s elements_casino_game_horse_pos_1 0
execute as @s[scores={elements_casino_interface=3}] run scoreboard players set @s elements_casino_game_horse_pos_2 9
execute as @s[scores={elements_casino_interface=3}] run scoreboard players set @s elements_casino_game_horse_pos_3 18

execute as @s[scores={elements_casino_interface=3}] store result score @s elements_enderchest_interface_clicked run clear @s iron_horse_armor[custom_model_data=1]
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game_horse_horse 1
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game_horse_load 4
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_casino_interface=3}] store result score @s elements_enderchest_interface_clicked run clear @s golden_horse_armor[custom_model_data=1]
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game_horse_horse 2
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game_horse_load 4
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_casino_interface=3}] store result score @s elements_enderchest_interface_clicked run clear @s diamond_horse_armor[custom_model_data=1]
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game_horse_horse 3
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game_horse_load 4
execute as @s[scores={elements_casino_interface=3,elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0








clear @s iron_horse_armor[custom_model_data=1]
clear @s golden_horse_armor[custom_model_data=1]
clear @s diamond_horse_armor[custom_model_data=1]

#game

execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_timer=20}] store result score @s elements_casino_game_horse_move run random value 1..3
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run scoreboard players add @s elements_casino_game_horse_pos_1 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run scoreboard players add @s elements_casino_game_horse_pos_2 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run scoreboard players add @s elements_casino_game_horse_pos_3 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1..3,elements_casino_game_horse_timer=20}] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 0.9




execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1..3,elements_casino_game_horse_timer=20}] run execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1..3,elements_casino_game_horse_timer=20}] run function elements:enderchest/casino/horse/horse-load with storage elements_getid
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.0 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.1 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.2 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.3 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.4 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.5 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.6 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.7 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.8 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.9 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.10 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.11 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.12 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.13 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.14 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.15 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.16 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=2,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.17 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.18 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.19 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.20 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.21 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.22 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.23 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.24 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.25 with air
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=3,elements_casino_game_horse_timer=20}] run item replace entity @s enderchest.26 with air

execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1..3,elements_casino_game_horse_timer=21}] run execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_move=1..3,elements_casino_game_horse_timer=21}] run function elements:enderchest/casino/horse/horse-set2 with storage elements_getid

execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_timer=21..}] run scoreboard players set @s elements_casino_game_horse_timer 0
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_timer=0..,elements_casino_game_horse_win_timer=0}] run scoreboard players add @s elements_casino_game_horse_timer 1

execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=0}] if entity @s[nbt={EnderItems:[{id:"minecraft:iron_horse_armor",Slot:8b,components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=0}] if entity @s[nbt={EnderItems:[{id:"minecraft:golden_horse_armor",Slot:17b,components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=0}] if entity @s[nbt={EnderItems:[{id:"minecraft:diamond_horse_armor",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=..40}] if entity @s[nbt={EnderItems:[{id:"minecraft:iron_horse_armor",Slot:8b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_casino_game_horse_win_timer 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=..40}] if entity @s[nbt={EnderItems:[{id:"minecraft:golden_horse_armor",Slot:17b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_casino_game_horse_win_timer 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=..40}] if entity @s[nbt={EnderItems:[{id:"minecraft:diamond_horse_armor",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_casino_game_horse_win_timer 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:iron_horse_armor",Slot:8b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_game_horse_winner 1
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:golden_horse_armor",Slot:17b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_game_horse_winner 2
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:diamond_horse_armor",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_game_horse_winner 3
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:iron_horse_armor",Slot:8b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_interface 6
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:golden_horse_armor",Slot:17b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_interface 6
execute as @s[scores={elements_casino_interface=4,elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:diamond_horse_armor",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_interface 6
execute as @s[scores={elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:iron_horse_armor",Slot:8b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:golden_horse_armor",Slot:17b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:diamond_horse_armor",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:iron_horse_armor",Slot:8b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_game_horse_win_timer 0
execute as @s[scores={elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:golden_horse_armor",Slot:17b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_game_horse_win_timer 0
execute as @s[scores={elements_casino_game_horse_win_timer=40}] if entity @s[nbt={EnderItems:[{id:"minecraft:diamond_horse_armor",Slot:26b,components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_casino_game_horse_win_timer 0




#finish


execute as @s[scores={elements_casino_interface=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",Slot:13b,components:{"minecraft:custom_model_data":1}}]}] if score @s elements_casino_game_horse_horse = @s elements_casino_game_horse_winner run scoreboard players set @s elements_casino_game_horse_winner_load 1
execute as @s[scores={elements_casino_interface=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",Slot:13b,components:{"minecraft:custom_model_data":1}}]}] unless score @s elements_casino_game_horse_horse = @s elements_casino_game_horse_winner run scoreboard players set @s elements_casino_game_horse_winner_load 2


execute as @s[scores={elements_casino_interface=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",Slot:13b,components:{"minecraft:custom_model_data":1}}]}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_casino_interface=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",Slot:13b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/casino/horse/horse-winner2 with storage elements_getid

clear @s minecraft:totem_of_undying[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":10}}}]


execute as @s[scores={elements_casino_interface=6}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=2}] run scoreboard players operation @s elements_casino_stats_lvlverloren += @s elements_casino_game_einsatz
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=2}] run scoreboard players operation .server elements_casino_stats_lvlverloren += @s elements_casino_game_einsatz
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=2}] run scoreboard players operation @s elements_casino_stats_lvlumsatz -= @s elements_casino_game_einsatz
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=2}] run scoreboard players operation .server elements_casino_stats_lvlumsatz -= @s elements_casino_game_einsatz
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1}] run scoreboard players set @s elements_casino_game_price 2
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1}] run scoreboard players operation @s elements_casino_game_price *= @s elements_casino_game_einsatz
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1}] run scoreboard players operation @s elements_casino_stats_lvlgewonnen += @s elements_casino_game_price
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1}] run scoreboard players operation .server elements_casino_stats_lvlgewonnen += @s elements_casino_game_price
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1}] run scoreboard players operation @s elements_casino_stats_lvlumsatz += @s elements_casino_game_price
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1}] run scoreboard players operation .server elements_casino_stats_lvlumsatz += @s elements_casino_game_price
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=1}] run xp add @s 3 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=5}] run xp add @s 15 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=10}] run xp add @s 30 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=50}] run xp add @s 150 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=100}] run xp add @s 300 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=500}] run xp add @s 1500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=1000}] run xp add @s 3000 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=5000}] run xp add @s 15000 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_casino_game_horse_winner_load=1,elements_casino_game_einsatz=10000}] run xp add @s 30000 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_casino_game 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_casino_interface=6}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=10] 1





# Names

# Holly, Polly, Trolly
# Tick, Trick, Track
# Fix, und, Foxi
# Einstein, Newton, Tesla
# Gudrun, Bernhard, Franz
# Asterix, Obelix, Idefix
# Tom, Jerry, Spike
# Maja, Willi, Flip
# Spongebob, Patrick, Thaddäus
# Harry, Ron, Hermine
# Alvin, Simon, Theodore
# Simba, Timon, Pumbaa
# Nemo, Dory, Marlin
# Peppa, George, Schorsch
# Wickie, Halvar, Snorre
# Kleiner Donner, Schneller Blitz, Großer Grauer
# Pettersson, Findus, Gustavsson
# Schere, Stein, Papier
# Bach, Beethoven, Mozart
# Steve Jobs, Bill Gates, Elon Musk
# Merkel, Söder, Scholz
# Thejocraft, BastiGHG, Sparkofphoenix
# Faister, Nooreax, LetsHugo
# Castcrafter, TheFabo, VeniCraft
# Trymacs, Rumathra, Rewinside