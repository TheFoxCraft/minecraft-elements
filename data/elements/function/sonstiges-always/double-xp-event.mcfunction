execute if score .server elements_double-xp-event_active matches 1 run bossbar set elements:double-xp-event_timer players @a
execute if score .server elements_double-xp-event_active matches 0 run bossbar set elements:double-xp-event_timer players


execute if score .server elements_double-xp-event_active matches 1 run scoreboard players remove .server elements_double-xp-event_timer_actual_sec 1

execute if score .server elements_double-xp-event_timer_actual_sec matches ..-1 run scoreboard players remove .server elements_double-xp-event_timer_actual_min 1
execute if score .server elements_double-xp-event_timer_actual_sec matches ..-1 run scoreboard players add .server elements_double-xp-event_timer_actual_sec 60

execute if score .server elements_double-xp-event_timer_actual_min matches ..-1 run scoreboard players remove .server elements_double-xp-event_timer_actual_h 1
execute if score .server elements_double-xp-event_timer_actual_min matches ..-1 run scoreboard players add .server elements_double-xp-event_timer_actual_min 60


scoreboard players set .server elements_double-xp-event_timer_actual_all 0
scoreboard players set .server elements_double-xp-event_timer_max_all 0

scoreboard players operation .server elements_double-xp-event_timer_actual_all += .server elements_double-xp-event_timer_actual_sec
scoreboard players operation .server elements_double-xp-event_timer_max_all += .server elements_double-xp-event_timer_max_sec

scoreboard players set .server elements_double-xp-event_calc_var 60
scoreboard players operation .server elements_double-xp-event_calc_var *= .server elements_double-xp-event_timer_actual_min
scoreboard players operation .server elements_double-xp-event_timer_actual_all += .server elements_double-xp-event_calc_var

scoreboard players set .server elements_double-xp-event_calc_var 60
scoreboard players operation .server elements_double-xp-event_calc_var *= .server elements_double-xp-event_timer_max_min
scoreboard players operation .server elements_double-xp-event_timer_max_all += .server elements_double-xp-event_calc_var

scoreboard players set .server elements_double-xp-event_calc_var 3600
scoreboard players operation .server elements_double-xp-event_calc_var *= .server elements_double-xp-event_timer_actual_h
scoreboard players operation .server elements_double-xp-event_timer_actual_all += .server elements_double-xp-event_calc_var

scoreboard players set .server elements_double-xp-event_calc_var 3600
scoreboard players operation .server elements_double-xp-event_calc_var *= .server elements_double-xp-event_timer_max_h
scoreboard players operation .server elements_double-xp-event_timer_max_all += .server elements_double-xp-event_calc_var



execute store result bossbar elements:double-xp-event_timer max run scoreboard players get .server elements_double-xp-event_timer_max_all
execute store result bossbar elements:double-xp-event_timer value run scoreboard players get .server elements_double-xp-event_timer_actual_all


execute if score .server elements_double-xp-event_timer_actual_all matches 0 if score .server elements_double-xp-event_active matches 1 run tellraw @a ["",{"text": "Server: ","color": "yellow"},{"text": "Das Doppelte-Level Event ist beendet!","color": "white"}]
execute if score .server elements_double-xp-event_timer_actual_all matches 0 if score .server elements_double-xp-event_active matches 1 as @a at @s run playsound minecraft:block.beacon.deactivate master @s
execute if score .server elements_double-xp-event_timer_actual_all matches 0 if score .server elements_double-xp-event_active matches 1 run title @a title ["",{"text": "Doppelte-Level Event ist beendet!","color": "red"}]
execute if score .server elements_double-xp-event_timer_actual_all matches 0 if score .server elements_double-xp-event_active matches 1 as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=2}] run function elements:enderchest/enderchest-clear
execute if score .server elements_double-xp-event_timer_actual_all matches 0 if score .server elements_double-xp-event_active matches 1 run scoreboard players set .server elements_double-xp-event_active 0


bossbar set elements:double-xp-event_timer name ["",{"text": "DOPPELTE LEVEL EVENT","color": "gold"},{"text": "  -  "},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_actual_h"}},{"text": ":","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_actual_min"}},{"text": ":","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_actual_sec"}}]

