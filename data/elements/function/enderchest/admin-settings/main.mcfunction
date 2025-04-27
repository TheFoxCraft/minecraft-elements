execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=0,elements_admin_config_interface=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=0,elements_admin_config_interface=2..}] run scoreboard players set @s elements_admin_config_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=1,elements_admin_config_interface=1}] run scoreboard players set @s elements_enderchest_interface_number 7
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=1,elements_admin_config_interface=2..}] run scoreboard players set @s elements_admin_config_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate": "elements.enderchest.zurueck","italic": false}',custom_model_data=1] 1

execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.4 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.22 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1

execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1,elements_rank_admin=1}] if score .server elements_setup matches 1.. run function elements:enderchest/admin-settings/abgaben
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=2,elements_rank_admin=1}] if score .server elements_setup matches 3.. run function elements:enderchest/admin-settings/double-xp-event/main
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=3,elements_rank_admin=1}] if score .server elements_setup matches 1.. run function elements:enderchest/admin-settings/teleporter
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=4,elements_rank_admin=1}] if score .server elements_setup matches 3.. run function elements:enderchest/admin-settings/shops
execute as @s[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=5,elements_rank_admin=1}] if score .server elements_setup matches 3.. run function elements:enderchest/admin-settings/raetsel_tipps/main



#interfaces:
# 1: main
# 2: double-xp-event
# 3: Teleporter
# 4: Shop Settings
# 5: Tipps

execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:experience_bottle[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1,}] if score .server elements_setup matches 2.. run item replace entity @s enderchest.10 with experience_bottle[custom_name='{"color":"gold","text":"Doppelte Level Event","italic": false}',lore=['{"text": "Klicke um das Menü zum Einstellen zu öffnen!","color": "gray","italic": false}'],custom_model_data=1] 1


execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 3
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] if score .server elements_setup matches 2.. run item replace entity @s enderchest.11 with ender_pearl[custom_name='{"color":"gold","text":"Teleporter","italic": false}',lore=['{"text": "Klicke um ein Menü für die Teleporter zu öffnen,","color": "gray","italic": false}','{"text":"falls du selbst das Teleport-Modul noch nicht freigeschaltet hast.","color": "gray","italic": false}'],custom_model_data=2] 1

execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:crafting_table[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 4
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] if score .server elements_setup matches 2.. run item replace entity @s enderchest.12 with crafting_table[custom_name='{"color":"gold","text":"Shops","italic": false}',lore=['{"text": "Klicke um das Menü für das Freischalten der Shops einzustellen","color": "gray","italic": false}'],custom_model_data=2] 1

execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:name_tag[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 5
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_tipps_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:name_tag",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] if score .server elements_setup matches 2.. run item replace entity @s enderchest.13 with name_tag[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.description","color": "gray","italic": false}'],custom_model_data=2] 1







#first setup
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:barrier[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/admin-settings/first-setup
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] unless score .server elements_setup matches 1.. run item replace entity @s enderchest.13 with barrier[custom_name='{"color":"red","text":"Startsetup","italic": false,"bold": true}',lore=['[{"text": "Achtung! Dieser Schritt kann normalerweise"}]','[{"text": "nur einmal ausgeführt werden!"}]','[{"text": "Solltest du ihn, (wie auch immer du das schaffst)"}]','[{"text": "erneut ausführen wird ALLES zurückgesetzt! (=nicht so gut!)"}]'],custom_model_data=10] 1



execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] unless score .server elements_spawn_energiekern-activate matches 1 store result score @s elements_enderchest_interface_clicked run clear @s minecraft:beacon[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless score .server elements_spawn_energiekern-activate matches 1 at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless score .server elements_spawn_energiekern-activate matches 1 run tellraw @s {"text":"Möchtest du die Startstory und das Projekt starten? Dann klicke HIER!","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set .server elements_setup_temp 1"},"hoverEvent":{"action":"show_text","contents":["Klicke um die Startstory und das Projekt zu starten!"]}}
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless score .server elements_spawn_energiekern-activate matches 1 run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:beacon",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] if score .server elements_setup matches 1 unless score .server elements_spawn_energiekern-activate matches 1 run item replace entity @s enderchest.13 with beacon[custom_name='{"color":"gold","italic":false,"text":"Starte Projekt!"}',lore=['{"color":"gold","italic":false,"text":"(Bestätigung im Chat!)"}','{"color":"gray","italic":false,"text":"Startet das Projekt, der Energiekern wird "}','{"color":"gray","italic":false,"text":"\\"aktiviert\\". Die Startstory"}','{"color":"gray","italic":false,"text":"spielt sich ab. Danach können"}','{"color":"gray","italic":false,"text":"die Spieler ihre Heimatdimension wählen"}'],custom_model_data=2] 1

execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 run scoreboard players set .server elements_spawn_energiekern_show 0
execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 run scoreboard players set .server elements_spawn_energiekern-activate 1
execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 as @a[scores={elements_enderchest_interface_number=8,elements_rank_admin=1}] run item replace entity @s enderchest.13 with air
execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Energiekern, der die Welten zusammenhält wird aktiviert!"}]
execute if score .server elements_setup_temp matches 1 run scoreboard players set .server elements_setup_temp 0


## Start Story

execute if score .server elements_setup matches 2 run function elements:enderchest/admin-settings/start_story