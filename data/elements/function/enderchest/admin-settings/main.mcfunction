execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=0,elements_admin_config_interface=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=1,elements_admin_config_interface=1}] run scoreboard players set @s elements_enderchest_interface_number 7
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_enderchest_level_settings=1,elements_admin_config_interface=2..}] run scoreboard players set @s elements_admin_config_interface 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück"}',custom_model_data=1] 1

execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.4 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.22 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1

execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=1,elements_rank_admin=1}] if score .server elements_setup matches 1.. run function elements:enderchest/admin-settings/abgaben
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=2,elements_rank_admin=1}] if score .server elements_setup matches 3.. run function elements:enderchest/admin-settings/double-xp-event/main
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=3,elements_rank_admin=1}] if score .server elements_setup matches 2.. run function elements:enderchest/admin-settings/teleporter
execute as @a[scores={elements_enderchest_interface_number=8,elements_admin_config_interface=4,elements_rank_admin=1}] if score .server elements_setup matches 3.. run function elements:enderchest/admin-settings/shops



#interfaces:
# 1: main
# 2: double-xp-event
# 3: Teleporter
# 4: Shop Settings

execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:experience_bottle[custom_model_data=1]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 2
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.10 with experience_bottle[custom_name='{"color":"gold","text":"Doppelte Level Event","italic": false}',lore=['{"text": "Klicke um das Menü zum Einstellen zu öffnen!","color": "gray","italic": false}'],custom_model_data=1] 1


execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 3
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.11 with ender_pearl[custom_name='{"color":"gold","text":"Teleporter","italic": false}',lore=['{"text": "Klicke um ein Menü für die Teleporter zu öffnen,","color": "gray","italic": false}','{"text":"falls du selbst das Teleport-Modul noch nicht freigeschaltet hast.","color": "gray","italic": false}'],custom_model_data=2] 1

execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:crafting_table[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_admin_config_interface 4
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8,elements_admin_config_interface=1}] run item replace entity @s enderchest.12 with crafting_table[custom_name='{"color":"gold","text":"Shops","italic": false}',lore=['{"text": "Klicke um das Menü für das Freischalten der Shops einzustellen","color": "gray","italic": false}'],custom_model_data=2] 1








#first setup
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:barrier[custom_model_data=10]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/admin-settings/first-setup
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] unless score .server elements_setup matches 1.. run item replace entity @s enderchest.13 with barrier[custom_name='{"color":"red","text":"Startsetup","italic": false,"bold": true}',lore=['[{"text": "Achtung! Dieser Schritt kann normalerweise"}]','[{"text": "nur einmal ausgeführt werden!"}]','[{"text": "Solltest du ihn, (wie auch immer du das schaffst)"}]','[{"text": "erneut ausführen wird ALLES zurückgesetzt! (=nicht so gut!)"}]'],custom_model_data=10] 1



execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] unless score .server elements_spawn_energiekern-activate matches 1 store result score @s elements_enderchest_interface_clicked run clear @s minecraft:beacon[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] unless score .server elements_spawn_energiekern-activate matches 1 at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] unless score .server elements_spawn_energiekern-activate matches 1 run tellraw @s {"text":"Möchtest du die Startstory und das Projekt starten? Dann klicke HIER!","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set .server elements_setup_temp 1"},"hoverEvent":{"action":"show_text","contents":["Klicke um die Startstory und das Projekt zu starten!"]}}
execute as @a[scores={elements_enderchest_interface_clicked=1}] unless score .server elements_spawn_energiekern-activate matches 1 run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:beacon",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_rank_admin=1,elements_enderchest_interface_number=8}] if score .server elements_setup matches 1 unless score .server elements_spawn_energiekern-activate matches 1 run item replace entity @s enderchest.13 with beacon[custom_name='{"color":"gold","italic":false,"text":"Starte Projekt!"}',lore=['{"color":"gold","italic":false,"text":"(Bestätigung im Chat!)"}','{"color":"gray","italic":false,"text":"Startet das Projekt, der Energiekern wird "}','{"color":"gray","italic":false,"text":"\\"aktiviert\\". Die Startstory"}','{"color":"gray","italic":false,"text":"spielt sich ab. Danach können"}','{"color":"gray","italic":false,"text":"die Spieler ihre Heimatdimension wählen"}'],custom_model_data=2] 1

execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 run scoreboard players set .server elements_spawn_energiekern_show 0
execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 run scoreboard players set .server elements_spawn_energiekern-activate 1
execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 as @a[scores={elements_enderchest_interface_number=8,elements_rank_admin=1}] run item replace entity @s enderchest.13 with air
execute if score .server elements_setup_temp matches 1 if score .server elements_setup matches 1 run tellraw @a ["",{"text": "Server: ","color": "yellow"},{"text": "Der Energiekern, der die Welten zusammenhält wird aktiviert!"}]
execute if score .server elements_setup_temp matches 1 run scoreboard players set .server elements_setup_temp 0



execute if score .server elements_setup matches 2 run scoreboard players add .server elements_setup_timer 1
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 40 in elements:hub positioned 0 101 0 run spreadplayers ~ ~ 1 10 under 101 false @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 40 in elements:hub run summon warden -10.69 112.00 0.81 {Tags:["follow","start_warden"],NoAI:true,Invulnerable:true}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 40 as @a at @s run tp @s ~ ~ ~ facing entity @n[tag=start_warden]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 80 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Soso, sieh mal einer an. Ihr Spieler denkt doch nicht wirklich, dass ihr allein die Macht über die Welt habt!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 220 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "ICH habe auch Interesse an dem Energiekern und ich werde ihn mir holen!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 300 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Hinter mir stehen alle Tiere der Natur!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 350 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Ihr habt keine Chance!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 420 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Aber wenn ich schon den Energiekern habe, dann braucht ihr doch den HUB auch nicht oder?"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 520 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Warte? Was soll das heißen!?"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 600 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Na, weg mit dem Laden hier!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 670 run tellraw @a ["",{"text": "Clementius: ","color": "yellow"},{"text": "Oje, das klingt garnicht gut! Da verschwinde ich lieber von hier!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 700 as @e[tag=start_clementius] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 740 as @e[tag=start_clementius] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 745 as @e[tag=start_clementius] at @s run kill @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 770 run tellraw @a ["",{"text": "Titus: ","color": "yellow"},{"text": "Warte ich komme mit!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 800 as @e[tag=start_titus] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 840 as @e[tag=start_titus] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 845 as @e[tag=start_titus] at @s run kill @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 870 run tellraw @a ["",{"text": "Mystery: ","color": "yellow"},{"text": "Ich auch!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 900 as @e[tag=start_mystery] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 940 as @e[tag=start_mystery] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 945 as @e[tag=start_mystery] at @s run kill @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 970 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Sorry Spieler, ich verlasse euch auch, aber ich komme zurück um euch zu helfen, wenn die Gefahr vorbei ist!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1000 as @e[tag=start_steinmetz] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1040 as @e[tag=start_steinmetz] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1045 as @e[tag=start_steinmetz] at @s run kill @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1100 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Hahaha! Jetzt seid ihr komplett auf Euch Allein gestellt!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1180 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Ich werde den Energiekern an mich nehmen, ihr werdet ihn nie wieder sehen!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1270 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Los! Kommt und räumt den Laden leer!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1220..1320 in elements:hub run summon allay 0 70 0 {NoAI:true,Invulnerable:true,Tags:["start_allay","start_itemsteal"]}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1330 in elements:hub run spreadplayers 0 0 3 25 under 101 false @e[tag=start_allay]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1330 as @e[tag=start_allay] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0 100 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1335 as @e[tag=start_allay] run data modify entity @s NoAI set value false
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1220..1320 in elements:hub run summon fox 0 70 0 {NoAI:true,Invulnerable:true,active_effects:[{id:"minecraft:speed",amplifier:1,duration:-1,show_particles:0b}],Tags:["start_fox","start_itemsteal"]}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1350 in elements:hub run spreadplayers 0 0 3 25 under 101 false @e[tag=start_fox]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1350 as @e[tag=start_fox] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0 100 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1355 as @e[tag=start_fox] run data modify entity @s NoAI set value false
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1900 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "So, jetzt wurden all eure Special Items geklaut! Mal sehen wie ihr ohne sie zurechtkommt!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1950 at @e[tag=unique_item_item] run particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0 50
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 1950 run kill @e[tag=unique_item_total]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2000 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Füchse, Allays ihr geht jetzt besser..."}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2000..2202 as @e[tag=start_itemsteal,limit=1] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0 500 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2000..2202 as @e[tag=start_itemsteal,limit=1] at @s run tp @s ~ ~-50 ~
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2000..2202 as @e[tag=start_itemsteal,limit=1] at @s run kill @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2250 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Soo, denn jetzt jagen wir den Laden hoch!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2200..2300 in elements:hub run summon creeper 0 70 0 {NoAI:true,Invulnerable:true,Tags:["start_creeper"],ExplosionRadius:0b}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2350 in elements:hub run spreadplayers 0 0 3 20 under 101 false @e[tag=start_creeper]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2350 as @e[tag=start_creeper] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0 100 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2355 as @e[tag=start_creeper] run data modify entity @s NoAI set value 0b
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2355 as @e[tag=start_creeper] run data modify entity @s Fuse set value 100
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2400 as @e[tag=start_creeper] run data modify entity @s Fuse set value 30
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2400 as @e[tag=start_creeper] run data modify entity @s ignited set value 1b
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2400 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Muhahaha!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2429 as @e[tag=start_creeper] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 2 3
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2426 in elements:hub run place template elements:hub/02_start_destroyed -30 93 -30
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2431..2450 run kill @e[type=item]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2500 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Was wollt ihr jetzt tun?"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2580 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Zack! Mein Energiekern!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2580 run scoreboard players set .server elements_spawn_energiekern 0
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2580 run playsound minecraft:block.beacon.deactivate master @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2660 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Und viel Spaß wie ihr jetzt zurechtkommt!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2670 as @e[tag=start_warden] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2710 as @e[tag=start_warden] at @s run tp @s 0 ~-50 0
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2720 as @e[tag=start_warden] run kill @s
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 2900 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Ich glaub die sind jetzt weg!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3000 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Aber auch wenn die Gefahr jetzt weg ist, braucht ihr nicht meinen, dass ich, so wie der HUB jetzt aussieht, zurückkomme!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3100 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Repariert erstmal meinen Platz und dann sehen wir weiter!"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3200 run tellraw @a ["",{"text": "Server: ","color": "yellow"},{"text": "Ihr könnt jetzt eure Klasse wählen, um aufzubauen, was der Warden zerstört hat."}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3300 run tellraw @a ["",{"text": "Server: ","color": "yellow"},{"text": "Los gehts"}]
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3310 run title @a times 20t 200t 20t
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3310 run title @a title {"text": "MINECRAFT ELEMENTS","color": "dark_purple"}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3310 as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1000 0 1
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3310 run title @a subtitle {"text": "Community Edition by TheFoxCraft","color": "gold"}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3390 run title @a subtitle {"text": "Viel Spaß","color": "gold"}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3390 run function elements:spawn/updatesigns
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3390 run scoreboard players set .server elements_stage 1
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3390 run scoreboard players set .server elements_abgabe_start_steinmetz 3
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3390 run tellraw @a[scores={elements_rank_admin=1}] {"text": "An die Admins: Der Erste Abgabe-Block ist gespawnt, standartmäßig kann man das Goal nicht komplett auffüllen, in den Admin-Settings kannst du Einstellen ob man Standartmäßig garnichts, alles, oder nicht komplett auffüllen kann. Außdem kannst du dir in den Admin-Settings einen Admin-Abgaben-Wand geben, mit dem du jeden Abgabeblock einzeln anpassen kannst!"}
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3400 run scoreboard players set .server elements_setup 3
execute if score .server elements_setup matches 2 if score .server elements_setup_timer matches 3400.. run scoreboard players set .server elements_setup_timer 0


execute as @e[tag=start_itemsteal] at @s if entity @e[tag=unique_item_total,distance=..3] at @e[tag=unique_item_item,distance=..3] run particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0 50
execute as @e[tag=start_itemsteal] at @s if entity @e[tag=unique_item_total,distance=..3] run kill @e[tag=unique_item_total,distance=..3]
 

