

execute as @a[scores={elements_casino_game_luckywheel_load=1}] run scoreboard players set @s elements_casino_interface 7
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run function elements:enderchest/enderchest-clear
#load
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run scoreboard players set @s elements_casino_game_luckywheel_speed 0
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run scoreboard players set @s elements_casino_game_luckywheel_wheel 5
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run scoreboard players set @s elements_casino_game_luckywheel_spin 0
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run scoreboard players set @s elements_casino_game_luckywheel_win_timer 0
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run item replace entity @s enderchest.13 with purple_stained_glass_pane[item_name='{"color":"green","text":"Click to Stop","italic": false}',custom_model_data=1] 1
execute as @a[scores={elements_casino_game_luckywheel_load=1}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run function elements:enderchest/casino/luckywheel/setdata with storage elements_getid

#\load
execute as @a[scores={elements_casino_game_luckywheel_load=1}] run scoreboard players set @s elements_casino_game_luckywheel_load 0


#game
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.0 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.1 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.2 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.3 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.4 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.5 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.6 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.7 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.8 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.9 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.17 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.18 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.19 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.20 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.21 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.22 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.23 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.24 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.25 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.26 with white_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.10 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.11 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.12 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.14 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.15 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7}] run item replace entity @s enderchest.16 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1


clear @a minecraft:white_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
clear @a minecraft:blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]

#start

execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=0}] store success score @s elements_enderchest_interface_click_casino_luckywheel_start run clear @s purple_stained_glass_pane[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_start=1}] run scoreboard players set @s elements_casino_game_luckywheel_speed 1
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_start=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_luckywheel_start 0



#wheel
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=1}] run item replace entity @s enderchest.0 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=2}] run item replace entity @s enderchest.1 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=3}] run item replace entity @s enderchest.2 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=4}] run item replace entity @s enderchest.3 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=5}] run item replace entity @s enderchest.4 with lime_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=6}] run item replace entity @s enderchest.5 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=7}] run item replace entity @s enderchest.6 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=8}] run item replace entity @s enderchest.7 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=9}] run item replace entity @s enderchest.8 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=10}] run item replace entity @s enderchest.17 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=11}] run item replace entity @s enderchest.26 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=12}] run item replace entity @s enderchest.25 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=13}] run item replace entity @s enderchest.24 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=14}] run item replace entity @s enderchest.23 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=15}] run item replace entity @s enderchest.22 with lime_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=16}] run item replace entity @s enderchest.21 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=17}] run item replace entity @s enderchest.20 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=18}] run item replace entity @s enderchest.19 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=19}] run item replace entity @s enderchest.18 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=20}] run item replace entity @s enderchest.9 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=5,elements_casino_game_luckywheel_speed=1..}] run item replace entity @s enderchest.13 with lime_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=15,elements_casino_game_luckywheel_speed=1..}] run item replace entity @s enderchest.13 with lime_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=1..4,elements_casino_game_luckywheel_speed=1..}] run item replace entity @s enderchest.13 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=6..14,elements_casino_game_luckywheel_speed=1..}] run item replace entity @s enderchest.13 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_wheel=16..20,elements_casino_game_luckywheel_speed=1..}] run item replace entity @s enderchest.13 with red_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1

execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=0}] run item replace entity @s enderchest.13 with purple_stained_glass_pane[item_name='{"color":"green","text":"Click to Stop","italic": false}',custom_model_data=1] 1


clear @a minecraft:red_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
clear @a minecraft:lime_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:purple_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]


#wheel-spin

execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=..20}] run scoreboard players add @s elements_casino_game_luckywheel_spin 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=..20}] if score @s elements_casino_game_luckywheel_spin >= @s elements_casino_game_luckywheel_speed run scoreboard players add @s elements_casino_game_luckywheel_wheel 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=..20}] if score @s elements_casino_game_luckywheel_spin >= @s elements_casino_game_luckywheel_speed run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 0.9
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=..20}] if score @s elements_casino_game_luckywheel_spin >= @s elements_casino_game_luckywheel_speed run scoreboard players set @s elements_casino_game_luckywheel_spin 0
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=..20,elements_casino_game_luckywheel_wheel=21..}] run scoreboard players set @s elements_casino_game_luckywheel_wheel 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=1..4}] store result score @s elements_casino_game_luckywheel_random run random value 1..30
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=5..9}] store result score @s elements_casino_game_luckywheel_random run random value 1..15
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=10..14}] store result score @s elements_casino_game_luckywheel_random run random value 1..10
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=14..21}] store result score @s elements_casino_game_luckywheel_random run random value 1..5
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=..20,elements_casino_game_luckywheel_random=1}] run scoreboard players add @s elements_casino_game_luckywheel_speed 1

execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=1..20,elements_casino_game_luckywheel_win_timer=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=1..20}] run scoreboard players add @s elements_casino_game_luckywheel_win_timer 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=5,elements_casino_game_luckywheel_win_timer=40}] run scoreboard players set @s elements_casino_game_luckywheel_win 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=15,elements_casino_game_luckywheel_win_timer=40}] run scoreboard players set @s elements_casino_game_luckywheel_win 1
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=1..4,elements_casino_game_luckywheel_win_timer=40}] run scoreboard players set @s elements_casino_game_luckywheel_win 0
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=6..14,elements_casino_game_luckywheel_win_timer=40}] run scoreboard players set @s elements_casino_game_luckywheel_win 0
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=16..20,elements_casino_game_luckywheel_win_timer=40}] run scoreboard players set @s elements_casino_game_luckywheel_win 0
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=1..20,elements_casino_game_luckywheel_win_timer=40}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_casino_interface=7,elements_casino_game_luckywheel_speed=21..,elements_casino_game_luckywheel_wheel=1..20,elements_casino_game_luckywheel_win_timer=40}] run scoreboard players set @s elements_casino_interface 8





#finish / winner




execute as @a[scores={elements_casino_interface=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",Slot:13b,components:{"minecraft:custom_model_data":1}}]}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @a[scores={elements_casino_interface=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:totem_of_undying",Slot:13b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/casino/luckywheel/winner2 with storage elements_getid

execute as @a[scores={elements_casino_interface=8}] store result score @s elements_enderchest_interface_click_casino_luckywheel_finish run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=10]
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=0}] run scoreboard players operation @s elements_casino_stats_lvlverloren += @s elements_casino_game_einsatz
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=0}] run scoreboard players operation .server elements_casino_stats_lvlverloren += @s elements_casino_game_einsatz
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=0}] run scoreboard players operation @s elements_casino_stats_lvlumsatz -= @s elements_casino_game_einsatz
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=0}] run scoreboard players operation .server elements_casino_stats_lvlumsatz -= @s elements_casino_game_einsatz
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1}] run scoreboard players set @s elements_casino_game_price 9
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1}] run scoreboard players operation @s elements_casino_game_price *= @s elements_casino_game_einsatz
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1}] run scoreboard players operation @s elements_casino_stats_lvlgewonnen += @s elements_casino_game_price
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1}] run scoreboard players operation .server elements_casino_stats_lvlgewonnen += @s elements_casino_game_price
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1}] run scoreboard players operation @s elements_casino_stats_lvlumsatz += @s elements_casino_game_price
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1}] run scoreboard players operation .server elements_casino_stats_lvlumsatz += @s elements_casino_game_price
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=1}] run xp add @s 10 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=5}] run xp add @s 50 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=10}] run xp add @s 100 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=50}] run xp add @s 500 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=100}] run xp add @s 1000 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=500}] run xp add @s 5000 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=1000}] run xp add @s 10000 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=5000}] run xp add @s 50000 levels
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1,elements_casino_game_luckywheel_win=1,elements_casino_game_einsatz=10000}] run xp add @s 100000 levels

execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1}] run scoreboard players set @s elements_casino_interface 1
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1}] run scoreboard players set @s elements_casino_game 0
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_casino_luckywheel_finish=1}] run scoreboard players set @s elements_enderchest_interface_click_casino_luckywheel_finish 0
execute as @a[scores={elements_casino_interface=8}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=10] 1