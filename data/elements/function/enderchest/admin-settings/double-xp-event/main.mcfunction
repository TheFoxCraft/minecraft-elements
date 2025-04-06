
# no event active
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_dye[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_h matches 0 if score .server elements_double-xp-event_timer_max_min matches 0 run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Bitte verwende mindestens 1 Minute für die Event-Zeit!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_h matches 0 if score .server elements_double-xp-event_timer_max_min matches 0 run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set .server elements_double-xp-event_active 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players operation .server elements_double-xp-event_timer_actual_h = .server elements_double-xp-event_timer_max_h
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players operation .server elements_double-xp-event_timer_actual_min = .server elements_double-xp-event_timer_max_min
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set .server elements_double-xp-event_timer_actual_sec 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run title @s title [{"text":"DOPPELTE LEVEL EVENT","color":"gold"},{"text":" GESTARTET","color":"green"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] as @s at @s run playsound minecraft:block.beacon.activate master @s

execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 2.. if score .server elements_double-xp-event_timer_max_h matches 2.. run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_h"}},{"text": " Stunden und ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_min"}},{"text": " Minuten gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 2.. if score .server elements_double-xp-event_timer_max_h matches 1 run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_h"}},{"text": " Stunde und ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_min"}},{"text": " Minuten gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 1 if score .server elements_double-xp-event_timer_max_h matches 2.. run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_h"}},{"text": " Stunden und ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_min"}},{"text": " Minute gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 1 if score .server elements_double-xp-event_timer_max_h matches 1 run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_h"}},{"text": " Stunde und ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_min"}},{"text": " Minute gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 0 if score .server elements_double-xp-event_timer_max_h matches 2.. run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_h"}},{"text": " Stunden gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 0 if score .server elements_double-xp-event_timer_max_h matches 1 run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_h"}},{"text": " Stunde gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 2.. if score .server elements_double-xp-event_timer_max_h matches 0 run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_min"}},{"text": " Minuten gestartet!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_double-xp-event_timer_max_min matches 1 if score .server elements_double-xp-event_timer_max_h matches 0 run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Doppelte Level Event wurde für ","color": "white"},{"score": {"name": ".server","objective": "elements_double-xp-event_timer_max_min"}},{"text": " Minute gestartet!","color": "white"}]


execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 run item replace entity @s enderchest.9 with gray_dye[custom_name='[{"color":"gold","text":"Status: ","italic": false},{"text": "Inaktiv","color": "gray"}]',lore=['{"text": "Klicke um ein Event für die Festgelegte Zeit zu starten!","color": "gray","italic": false}'],custom_model_data=10] 1



execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_h 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_h matches ..98 run item replace entity @s enderchest.2 with clock[custom_name='[{"color":"gold","text":"Stunden +1","italic": false}]',lore=['{"text": "Klicke die Dauer um 1 Stunde zu erhöhen","color": "gray","italic": false}'],custom_model_data=10] 1
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_h matches 99.. run item replace entity @s enderchest.2 with air


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=11]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players remove .server elements_double-xp-event_timer_max_h 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":11}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_h matches 1.. run item replace entity @s enderchest.20 with clock[custom_name='[{"color":"gold","text":"Stunden -1","italic": false}]',lore=['{"text": "Klicke die Dauer um 1 Stunde zu verringern","color": "gray","italic": false}'],custom_model_data=11] 1
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_h matches ..0 run item replace entity @s enderchest.20 with air


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_min 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches ..58 run item replace entity @s enderchest.5 with clock[custom_name='[{"color":"gold","text":"Minuten +1","italic": false}]',lore=['{"text": "Klicke die Dauer um 1 Minute zu erhöhen","color": "gray","italic": false}'],custom_model_data=12] 1
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches 59.. run item replace entity @s enderchest.5 with air


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=13]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players remove .server elements_double-xp-event_timer_max_min 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":13}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches 1.. run item replace entity @s enderchest.23 with clock[custom_name='[{"color":"gold","text":"Minuten -1","italic": false}]',lore=['{"text": "Klicke die Dauer um 1 Minute zu verringern","color": "gray","italic": false}'],custom_model_data=13] 1
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches ..0 run item replace entity @s enderchest.23 with air


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=14]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_min 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":14}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches ..58 run item replace entity @s enderchest.4 with clock[custom_name='[{"color":"gold","text":"Minuten +10","italic": false}]',lore=['{"text": "Klicke die Dauer um 10 Minuten zu erhöhen","color": "gray","italic": false}'],custom_model_data=14] 1
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches 59.. run item replace entity @s enderchest.4 with air


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=15]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players remove .server elements_double-xp-event_timer_max_min 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":15}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches 1.. run item replace entity @s enderchest.22 with clock[custom_name='[{"color":"gold","text":"Minuten -10","italic": false}]',lore=['{"text": "Klicke die Dauer um 10 Minuten zu verringern","color": "gray","italic": false}'],custom_model_data=15] 1
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 0 if score .server elements_double-xp-event_timer_max_min matches ..0 run item replace entity @s enderchest.22 with air


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:lectern[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s [{"text":"Die Eventzeit beträgt: ","color":"gold"},{"score":{"name":".server","objective":"elements_double-xp-event_timer_max_h"}},{"translate":"elements.main.other.:","color":"white"},{"score":{"name":".server","objective":"elements_double-xp-event_timer_max_min"}},{"text":" Stunden","color":"gold"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:lectern",count:1,components:{"minecraft:custom_model_data":10}}}]
#item in #showtimes definiert


execute if score .server elements_double-xp-event_timer_max_h matches 99.. run scoreboard players set .server elements_double-xp-event_timer_max_h 99
execute if score .server elements_double-xp-event_timer_max_min matches 59.. if score .server elements_double-xp-event_active matches 0 run scoreboard players set .server elements_double-xp-event_timer_max_min 59
execute if score .server elements_double-xp-event_timer_max_min matches 60.. if score .server elements_double-xp-event_active matches 1 run scoreboard players add .server elements_double-xp-event_timer_max_h 1
execute if score .server elements_double-xp-event_timer_max_min matches 60.. if score .server elements_double-xp-event_active matches 1 run scoreboard players remove .server elements_double-xp-event_timer_max_min 60
execute if score .server elements_double-xp-event_timer_max_h matches ..0 run scoreboard players set .server elements_double-xp-event_timer_max_h 0
execute if score .server elements_double-xp-event_timer_max_min matches ..0 run scoreboard players set .server elements_double-xp-event_timer_max_min 0



execute store result storage elements_sonstiges double_xp_event_timer_max_h int 1 run scoreboard players get .server elements_double-xp-event_timer_max_h
execute store result storage elements_sonstiges double_xp_event_timer_max_min int 1 run scoreboard players get .server elements_double-xp-event_timer_max_min
execute store result score .server elements_double-xp-event_get_timer_data run data get storage elements_sonstiges double_xp_event_timer_max_h 1
execute if score .server elements_double-xp-event_get_timer_data matches ..0 run data modify storage elements_sonstiges double_xp_event_timer_max_h set value 1
execute store result score .server elements_double-xp-event_get_timer_data run data get storage elements_sonstiges double_xp_event_timer_max_min 1
execute if score .server elements_double-xp-event_get_timer_data matches ..0 run data modify storage elements_sonstiges double_xp_event_timer_max_min set value 1

function elements:enderchest/admin-settings/double-xp-event/show_times with storage elements_sonstiges





# event active
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:lime_dye[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] as @s at @s run playsound minecraft:block.beacon.deactivate master @s
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set .server elements_double-xp-event_active 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Das aktuelle Doppelte Level Event wurde von einem Admin abgebrochen!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 run item replace entity @s enderchest.9 with lime_dye[custom_name='[{"color":"gold","text":"Status: ","italic": false},{"text": "Aktiv","color": "green"}]',lore=['{"text": "Klicke um das Event vorzeitig abzubrechen!","color": "gray","italic": false}','{"text": "Achtung, keine Bestätigung erforderlich!","color": "red"}'],custom_model_data=10] 1



execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Das Doppelte Level Event wurde um 2 Stunden verlängert!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] as @s at @s run playsound entity.player.levelup master @s
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_h 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_actual_h 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 run item replace entity @s enderchest.11 with clock[custom_name='[{"color":"gold","text":"Dauer +2 Stunden","italic": false}]',lore=['{"text": "Klicke die Dauer des Events um 2 Stunden zu verlängern","color": "gray","italic": false}'],custom_model_data=10] 1

execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=11]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Das Doppelte Level Event wurde um 1 Stunde verlängert!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] as @s at @s run playsound entity.player.levelup master @s
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_h 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_actual_h 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":11}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 run item replace entity @s enderchest.12 with clock[custom_name='[{"color":"gold","text":"Dauer +1 Stunde","italic": false}]',lore=['{"text": "Klicke die Dauer des Events um 1 Stunde zu verlängern","color": "gray","italic": false}'],custom_model_data=11] 1


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Das Doppelte Level Event wurde um 30 Minuten verlängert!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] as @s at @s run playsound entity.player.levelup master @s
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_min 30
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_actual_min 30
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 run item replace entity @s enderchest.13 with clock[custom_name='[{"color":"gold","text":"Dauer +30 Minuten","italic": false}]',lore=['{"text": "Klicke die Dauer des Events um 30 Minuten zu verlängern","color": "gray","italic": false}'],custom_model_data=12] 1

execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 store success score @s elements_enderchest_interface_clicked run clear @s minecraft:clock[custom_model_data=13]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Das Doppelte Level Event wurde um 10 Minuten verlängert!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] as @s at @s run playsound entity.player.levelup master @s
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_max_min 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add .server elements_double-xp-event_timer_actual_min 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:custom_model_data":13}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=2}] if score .server elements_double-xp-event_active matches 1 run item replace entity @s enderchest.14 with clock[custom_name='[{"color":"gold","text":"Dauer +10 Minuten","italic": false}]',lore=['{"text": "Klicke die Dauer des Events um 10 Minuten zu verlängern","color": "gray","italic": false}'],custom_model_data=13] 1
