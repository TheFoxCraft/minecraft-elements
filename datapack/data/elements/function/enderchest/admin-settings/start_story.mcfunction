execute run scoreboard players add .server elements_setup_timer 1
execute if score .server elements_setup_timer matches 40 in elements:hub positioned 0 101 0 run spreadplayers ~ ~ 1 10 under 101 false @a
execute if score .server elements_setup_timer matches 40 in elements:hub run summon warden -10.69 112.00 0.81 {Tags:["follow","start_warden"],NoAI:true,Invulnerable:true}
execute if score .server elements_setup_timer matches 40 as @a at @s run tp @s ~ ~ ~ facing entity @n[tag=start_warden]
execute if score .server elements_setup_timer matches 80 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Soso, sieh mal einer an. Ihr Spieler denkt doch nicht wirklich, dass ihr allein die Macht über die Welt habt!"}]
execute if score .server elements_setup_timer matches 220 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "ICH habe auch Interesse an dem Energiekern und ich werde ihn mir holen!"}]
execute if score .server elements_setup_timer matches 300 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Hinter mir stehen alle Tiere der Natur!"}]
execute if score .server elements_setup_timer matches 350 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Ihr habt keine Chance!"}]
execute if score .server elements_setup_timer matches 420 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Aber wenn ich schon den Energiekern habe, dann braucht ihr doch den HUB auch nicht oder?"}]
execute if score .server elements_setup_timer matches 520 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Warte? Was soll das heißen!?"}]
execute if score .server elements_setup_timer matches 600 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Na, weg mit dem Laden hier!"}]
execute if score .server elements_setup_timer matches 670 run tellraw @a ["",{"translate":"elements.villager.clementius.name.chat","color": "yellow"},{"text": "Oje, das klingt garnicht gut! Da verschwinde ich lieber von hier!"}]
execute if score .server elements_setup_timer matches 700 as @e[tag=start_clementius] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup_timer matches 740 as @e[tag=start_clementius] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup_timer matches 745 as @e[tag=start_clementius] at @s run kill @s
execute if score .server elements_setup_timer matches 770 run tellraw @a ["",{"translate":"elements.villager.titus.name.chat","color": "yellow"},{"text": "Warte ich komme mit!"}]
execute if score .server elements_setup_timer matches 800 as @e[tag=start_titus] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup_timer matches 840 as @e[tag=start_titus] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup_timer matches 845 as @e[tag=start_titus] at @s run kill @s
execute if score .server elements_setup_timer matches 870 run tellraw @a ["",{"translate":"elements.villager.mystery.name.chat","color": "yellow"},{"text": "Ich auch!"}]
execute if score .server elements_setup_timer matches 900 as @e[tag=start_mystery] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup_timer matches 940 as @e[tag=start_mystery] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup_timer matches 945 as @e[tag=start_mystery] at @s run kill @s
execute if score .server elements_setup_timer matches 970 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Sorry Leute, ich verlasse euch auch, aber ich komme zurück um euch zu helfen, wenn die Gefahr vorbei ist, versprochen!"}]
execute if score .server elements_setup_timer matches 1000 as @e[tag=start_steinmetz] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup_timer matches 1040 as @e[tag=start_steinmetz] at @s run tp ~ ~-30 ~ 
execute if score .server elements_setup_timer matches 1045 as @e[tag=start_steinmetz] at @s run kill @s
execute if score .server elements_setup_timer matches 1100 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Hahaha! Jetzt seid ihr komplett auf Euch Allein gestellt!"}]
execute if score .server elements_setup_timer matches 1180 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Ich werde den Energiekern an mich nehmen, ihr werdet ihn nie wieder sehen!"}]
execute if score .server elements_setup_timer matches 1270 run scoreboard players set .server elements_setup_timer 2250
execute if score .server elements_setup_timer matches 2250 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Soo, aber jetzt jagen wir den Laden hier erstmal in die Luft!"}]
execute if score .server elements_setup_timer matches 2200..2300 in elements:hub run summon creeper 0 70 0 {NoAI:true,Invulnerable:true,Tags:["start_creeper"],ExplosionRadius:0b}
execute if score .server elements_setup_timer matches 2350 in elements:hub run spreadplayers 0 0 3 20 under 101 false @e[tag=start_creeper]
execute if score .server elements_setup_timer matches 2350 as @e[tag=start_creeper] at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0 100 force @a
execute if score .server elements_setup_timer matches 2355 as @e[tag=start_creeper] run data modify entity @s NoAI set value 0b
execute if score .server elements_setup_timer matches 2355 as @e[tag=start_creeper] run data modify entity @s Fuse set value 100
execute if score .server elements_setup_timer matches 2400 as @e[tag=start_creeper] run data modify entity @s Fuse set value 30
execute if score .server elements_setup_timer matches 2400 as @e[tag=start_creeper] run data modify entity @s ignited set value 1b
execute if score .server elements_setup_timer matches 2400 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Muhahaha!"}]
execute if score .server elements_setup_timer matches 2429 as @e[tag=start_creeper] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 2 3
execute if score .server elements_setup_timer matches 2426 in elements:hub run place template elements:hub/02_start_destroyed -30 93 -30
execute if score .server elements_setup_timer matches 2431..2450 run kill @e[type=item]
execute if score .server elements_setup_timer matches 2500 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Was wollt ihr jetzt tun?"}]
execute if score .server elements_setup_timer matches 2580 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Zack! Mein Energiekern!"}]
execute if score .server elements_setup_timer matches 2580 run scoreboard players set .server elements_spawn_energiekern 0
execute if score .server elements_setup_timer matches 2580 run playsound minecraft:block.beacon.deactivate master @s
execute if score .server elements_setup_timer matches 2660 run tellraw @a ["",{"text": "Warden: ","color": "yellow"},{"text": "Und viel Spaß wie ihr jetzt zurechtkommt!"}]
execute if score .server elements_setup_timer matches 2670 as @e[tag=start_warden] at @s run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 3 10000 force @a
execute if score .server elements_setup_timer matches 2710 as @e[tag=start_warden] at @s run tp @s 0 ~-50 0
execute if score .server elements_setup_timer matches 2720 as @e[tag=start_warden] run kill @s
execute if score .server elements_setup_timer matches 2900 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Psst.. Ich glaub die sind jetzt weg"}]
execute if score .server elements_setup_timer matches 3000 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Aber auch wenn die Gefahr jetzt weg ist, braucht ihr nicht meinen, dass ich, so wie der HUB jetzt aussieht, zurückkomme!"}]
execute if score .server elements_setup_timer matches 3100 run tellraw @a ["",{"text": "Steinmetz: ","color": "yellow"},{"text": "Repariert erstmal meinen Platz und dann sehen wir weiter!"}]
execute if score .server elements_setup_timer matches 3200 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ihr könnt jetzt eure Klasse wählen, um aufzubauen, was der Warden zerstört hat."}]
execute if score .server elements_setup_timer matches 3300 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Los gehts"}]
execute if score .server elements_setup_timer matches 3310 run title @a times 20t 200t 20t
execute if score .server elements_setup_timer matches 3310 run title @a title {"text": "MINECRAFT ELEMENTS","color": "dark_purple"}
execute if score .server elements_setup_timer matches 3310 as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1000 0 1
execute if score .server elements_setup_timer matches 3310 run title @a subtitle {"text": "Community Edition by TheFoxCraft","color": "gold"}
execute if score .server elements_setup_timer matches 3390 run title @a subtitle {"text": "Viel Spaß","color": "gold"}
execute if score .server elements_setup_timer matches 3390 run function elements:spawn/updatesigns
execute if score .server elements_setup_timer matches 3390 run scoreboard players set .server elements_stage 1
execute if score .server elements_setup_timer matches 3390 run scoreboard players set .server elements_abgabe_start_steinmetz 3
execute if score .server elements_setup_timer matches 3390 run tellraw @a[scores={elements_rank_admin=1}] {"text": "An die Admins: Der Erste Abgabe-Block ist gespawnt, standartmäßig kann man das Goal nicht komplett auffüllen, in den Admin-Settings kannst du Einstellen ob man Standartmäßig garnichts, alles, oder nicht komplett auffüllen kann. Außdem kannst du dir in den Admin-Settings einen Admin-Abgaben-Wand geben, mit dem du jeden Abgabeblock einzeln anpassen kannst!"}
execute if score .server elements_setup_timer matches 3400 run scoreboard players set .server elements_setup 3
execute if score .server elements_setup_timer matches 3400.. run scoreboard players set .server elements_setup_timer 0
