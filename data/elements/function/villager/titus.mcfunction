execute as @e[type=minecraft:interaction,tag=titus] at @s on target run tag @s add titus
execute as @a[tag=titus] run scoreboard players set @s elements_titus_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=titus,distance=..4] run data remove entity @s interaction
tag @a remove titus

#100


execute as @a[scores={elements_titus_level=0,elements_titus_clicked=1}] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Oh Hallo "},{"selector":"@s","color":"gold"},{"text": "!"},"\n",{"text":"Du hast es wieder zurück in den Hub geschafft. Ich nehme an, das bedeutet, dass die Verbindung zwischen den Dimensionen wiederhergestellt wurde"},"\n","\n",{"text":"Zwar nicht ganz stabil, aber ja","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 101"}}]
execute as @a[scores={elements_titus_level=0,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=0,just-ignore=101}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Wie du bereits festgestellt hast, kannst du deine Enderkiste als eine Art Menü zum Reisen verwenden. Aber das ist noch nicht alles! Wenn du mir bei den Aufgaben hilfst, kann ich dir weitere Funktionen freischalten"},"\n","\n",{"text":"Welche sind das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 102"}}]
execute as @a[scores={elements_titus_level=0,just-ignore=101}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=101}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=0,just-ignore=102}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Das erste kann ich dir kostenlos geben – schau mal! Ich habe einen Stats-Button hinzugefügt. Damit kannst du jederzeit deine Charakter-Stats anzeigen lassen, um den Überblick zu behalten."},"\n","\n",{"text":"Schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 103"}}]
execute as @a[scores={elements_titus_level=0,just-ignore=102}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=102}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=0,just-ignore=103}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Mach das."}]
execute as @a[scores={elements_titus_level=0,just-ignore=103}] at @s if entity @e[type=villager,tag=titus,distance=..10] run function elements:enderchest/stats
execute as @a[scores={elements_titus_level=0,just-ignore=103}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_enderchest_level_stats 1
execute as @a[scores={elements_titus_level=0,just-ignore=103}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 1
execute as @a[scores={elements_titus_level=0,just-ignore=103}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=103}] run scoreboard players set @s just-ignore 0


execute as @a[scores={elements_titus_level=1,elements_titus_clicked=1}] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Außderdem hätte ich noch ein anderes Feature, dass sehr nützlich ist"},"\n","\n",{"text":"Was ist das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 104"}}]
execute as @a[scores={elements_titus_level=1,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=1,just-ignore=104}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Es ist ein Einstellungs-Menu mit dem du in Zukunft eine Menge Sachen einstellen kannst, zwei kannst du schon jetzt machen"},"\n","\n",{"text":"Und was?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 105"}}]
execute as @a[scores={elements_titus_level=1,just-ignore=104}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=104}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=1,just-ignore=105}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Du kannst einmal den Teleportmodus anpassen. Wenn dir die aktuelle Version nicht gefällt, kannst du es auch umstellen auf die Version des eigentlichem Erfinder des Projekts "},{"text": "SparkofPhoenix","italic": true,"color": "gold","hoverEvent": {"action": "show_text","contents": {"text": "Klicke um seinen Kanal anzuzeigen!"}},"clickEvent": {"action": "open_url","value": "https://www.youtube.com/@SparkofPhoenix"}},{"text":". Außerdem kannst du dir das aktuelle Gruppen-Abgabeziel anzeigen lassen!"},"\n","\n",{"text":"Das kingt echt cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 106"}}]
execute as @a[scores={elements_titus_level=1,just-ignore=105}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=105}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=1,just-ignore=106}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich bräuchte dafür allerdings 32 Komprimierten Bruchstein und 70 Level."}]
execute as @a[scores={elements_titus_level=1,just-ignore=106}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 2
execute as @a[scores={elements_titus_level=1,just-ignore=106}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=106}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_titus_level=2,elements_titus_clicked=1}] run tellraw @s ["",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 32 Komprimierten Bruchstein?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 107"}}]
execute as @a[scores={elements_titus_level=2,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=2,just-ignore=107,elements_inv_compressed_cobblestone=32..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Vielen Dank."}]
execute as @a[scores={elements_titus_level=2,just-ignore=107,elements_inv_compressed_cobblestone=32..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run clear @s cobbled_deepslate[custom_model_data=1] 32
execute as @a[scores={elements_titus_level=2,just-ignore=107,elements_inv_compressed_cobblestone=32..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 3
execute as @a[scores={elements_titus_level=2,just-ignore=107,elements_inv_compressed_cobblestone=..31}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Komprimierten Bruchstein!"}]
execute as @a[scores={elements_titus_level=2,just-ignore=107}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=107}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_titus_level=3,elements_titus_clicked=1}] run tellraw @s ["",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Jetzt noch die 70 Level!."},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 108"}}]
execute as @a[scores={elements_titus_level=3,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=3,just-ignore=108,elements_mainlevel=70..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Sehr gut! Ich habe deiner Enderkiste die Einstellungen hinzugefügt!"}]
execute as @a[scores={elements_titus_level=3,just-ignore=108,elements_mainlevel=70..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run xp add @s -100 levels
execute as @a[scores={elements_titus_level=3,just-ignore=108,elements_mainlevel=70..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_enderchest_level_settings 1
execute as @a[scores={elements_titus_level=3,just-ignore=108,elements_mainlevel=70..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 4
execute as @a[scores={elements_titus_level=3,just-ignore=108,elements_mainlevel=..69}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Level!"}]
execute as @a[scores={elements_titus_level=3,just-ignore=108}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=108}] run scoreboard players set @s just-ignore 0


execute as @a[scores={elements_titus_level=4,elements_titus_clicked=1}] run tellraw @s ["",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Soso, du willst also noch mehr!"},"\n","\n",{"text":"Hast du noch etwas für mich?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 109"}}]
execute as @a[scores={elements_titus_level=4,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=4,just-ignore=109}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Ja, ich kann dir noch einen Auto-Compactor Modul für Stein anbieten."},"\n","\n",{"text":"Das klingt interessant!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 110"}}]
execute as @a[scores={elements_titus_level=4,just-ignore=109}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=109}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=4,just-ignore=110}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Das ist es auch, und mächtig! Deswegen ist es leider etwas teurer."},"\n","\n",{"text":"Was brauchst du denn alles?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 111"}}]
execute as @a[scores={elements_titus_level=4,just-ignore=110}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=110}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=4,just-ignore=111}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich bräuchte 64 Komprimierten Bruchstein und 100 Level!"},"\n","\n",{"text":"Das ist echt sehr teuer, aber ich gebe mein bestes!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 112"}}]
execute as @a[scores={elements_titus_level=4,just-ignore=111}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=111}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_titus_level=4,just-ignore=112}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich warte auf dich."}]
execute as @a[scores={elements_titus_level=4,just-ignore=112}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 5
execute as @a[scores={elements_titus_level=4,just-ignore=112}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=112}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_titus_level=5,elements_titus_clicked=1}] run tellraw @s ["",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du alles dabei? Gut. Fangen wir mit den 64 Compressed Cobblestone an."},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 113"}}]
execute as @a[scores={elements_titus_level=5,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=5,just-ignore=113,elements_inv_compressed_cobblestone=64..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Vielen Dank."}]
execute as @a[scores={elements_titus_level=5,just-ignore=113,elements_inv_compressed_cobblestone=64..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run clear @s cobbled_deepslate[custom_model_data=1] 64
execute as @a[scores={elements_titus_level=5,just-ignore=113,elements_inv_compressed_cobblestone=64..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 6
execute as @a[scores={elements_titus_level=5,just-ignore=113,elements_inv_compressed_cobblestone=..63}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Komprimierten Bruchstein!"}]
execute as @a[scores={elements_titus_level=5,just-ignore=113}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=113}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_titus_level=6,elements_titus_clicked=1}] run tellraw @s ["",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Jetzt noch die 100 Level!."},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 114"}}]
execute as @a[scores={elements_titus_level=6,elements_titus_clicked=1}] run scoreboard players set @s elements_titus_clicked 0
execute as @a[scores={elements_titus_level=6,just-ignore=114,elements_mainlevel=100..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Sehr gut! Ich habe deiner Enderkiste jetzt das Modul hinzugefügt!"},"\n","\n",{"text":"Und wie funktioniert es?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 115"}}]
execute as @a[scores={elements_titus_level=6,just-ignore=114,elements_mainlevel=100..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run xp add @s -100 levels
execute as @a[scores={elements_titus_level=6,just-ignore=114,elements_mainlevel=100..}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 7
execute as @a[scores={elements_titus_level=6,just-ignore=114,elements_mainlevel=..99}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Level!"}]
execute as @a[scores={elements_titus_level=6,just-ignore=114}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=114}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_titus_level=7,just-ignore=115}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Du kannst in deiner Enderkiste das Menü zum Auto-Compactor öffnen und dort den Compactor für Stein anschalten, wenn du nun über einen Stack Stein in deinem Inventar hast, wird er automatisch umgewandelt!"},"\n","\n",{"text":"Das teste ich direkt aus!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 116"}}]
execute as @a[scores={elements_titus_level=7,just-ignore=115}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=115}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_titus_level=7,just-ignore=116,elements_enderchest_interface_number=1}] at @s if entity @e[type=villager,tag=titus,distance=..10] run item replace entity @s enderchest.0 with piston[custom_name='{"color":"gray","text":"Auto-Compactor"}',lore=['{"color":"aqua","text":"Öffnet Menü für Auto-Compactor"}'],custom_model_data=1] 1
execute as @a[scores={elements_titus_level=7,just-ignore=116}] at @s if entity @e[type=villager,tag=titus,distance=..10] run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Viel Spaß damit!"}]
execute as @a[scores={elements_titus_level=7,just-ignore=116}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_enderchest_level_autocompact 1
execute as @a[scores={elements_titus_level=7,just-ignore=116}] at @s if entity @e[type=villager,tag=titus,distance=..10] run scoreboard players set @s elements_titus_level 8
execute as @a[scores={elements_titus_level=7,just-ignore=116}] at @s unless entity @e[type=villager,tag=titus,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=116}] run scoreboard players set @s just-ignore 0


execute as @a[scores={elements_titus_level=8,elements_titus_clicked=1}] if score #server elements_stage matches ..1 run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"Tut mir Leid, aber mehr habe ich aktuell leider nicht für dich!"}]
execute as @a[scores={elements_titus_level=8,elements_titus_clicked=1}] if score #server elements_stage matches ..1 run scoreboard players set @s elements_titus_clicked 0

execute as @a[scores={elements_titus_level=8,elements_titus_clicked=1}] if score #server elements_stage matches 2.. run tellraw @s ["","\n",{"text":"Titus:","underlined":true,"color":"dark_red"},"\n",{"text":"mehr bis jetzt nicht gecodet!"}]
execute as @a[scores={elements_titus_level=8,elements_titus_clicked=1}] if score #server elements_stage matches 2.. run scoreboard players set @s elements_titus_clicked 0
