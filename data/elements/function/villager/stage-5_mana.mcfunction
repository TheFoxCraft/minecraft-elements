execute as @e[type=minecraft:interaction,tag=stage-5_mana] at @s on target run tag @s add stage-5_mana
execute as @s[tag=stage-5_mana] run scoreboard players set @s elements_villager_stage-5_mana_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=stage-5_mana,distance=..10] run data remove entity @s interaction
tag @s remove stage-5_mana

#1200


execute as @s[scores={elements_villager_stage-5_mana_level=0,elements_villager_stage-5_mana_clicked=1,elements_mana_regeneration-per-sec=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Du bist zu Früh! Ich hab noch nichts für dich! Schau dich erstmal bei meinen Kollegen um und komme dann zurück!"}]

execute as @s[scores={elements_villager_stage-5_mana_level=0,elements_villager_stage-5_mana_clicked=1,elements_mana_regeneration-per-sec=2}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Willkommen Zurück bei der Magie! Und wie kommst du klar mit deiner Mana?"},"\n","\n",{"text":"Wie meinst du das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1200"}}]
execute as @s[scores={elements_villager_stage-5_mana_level=0,elements_villager_stage-5_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-5_mana_clicked 0
execute as @s[scores={elements_villager_stage-5_mana_level=0,z_just-ignore=1200}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Naja, du hast ja schonmal deine Mana Regeneration erhöht bekommen, aber seitdem hast du sicherlich einige neue Manaitems bekommen"},"\n","\n",{"text":"Ja das Stimmt!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1201"}}]
execute as @s[scores={z_just-ignore=1200}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-5_mana_level=0,z_just-ignore=1201}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Da wärs doch Besser wenn ich dir deine Regeneration nochmal weiter erhöhen könnte oder?"},"\n","\n",{"text":"Ja das Stimmt!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1202"}}]
execute as @s[scores={z_just-ignore=1201}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-5_mana_level=0,z_just-ignore=1202}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Gegen 10.000 Level und fünf deiner Herzen kann ich dir deine Regeneration von 2 auf 3 Mana pro Sekunde erhöhen!"},"\n","\n",{"text":"Okay, das ist viel, aber vermutlich gerechtfertigt, ich mach mich mal ran..","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1203"}}]
execute as @s[scores={z_just-ignore=1202}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-5_mana_level=0,z_just-ignore=1203}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Mach das, ich warte hier"}]
execute as @s[scores={elements_villager_stage-5_mana_level=0,z_just-ignore=1203}] run scoreboard players set @s elements_villager_stage-5_mana_level 1
execute as @s[scores={z_just-ignore=1203}] run scoreboard players set @s z_just-ignore 0



execute as @s[scores={elements_villager_stage-5_mana_level=1,elements_villager_stage-5_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Und hast du die 10.000 Level?"},"\n","\n",{"text":"Ja, hier sind sie","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1204"}}]
execute as @s[scores={elements_villager_stage-5_mana_level=1,elements_villager_stage-5_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-5_mana_clicked 0
execute as @s[scores={elements_villager_stage-5_mana_level=1,z_just-ignore=1204,elements_mainlevel=10000..}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Perfekt!"}]
execute as @s[scores={elements_villager_stage-5_mana_level=1,z_just-ignore=1204,elements_mainlevel=10000..}] run xp add @s -10000 levels
execute as @s[scores={elements_villager_stage-5_mana_level=1,z_just-ignore=1204,elements_mainlevel=10000..}] run scoreboard players set @s elements_villager_stage-5_mana_level 2
execute as @s[scores={elements_villager_stage-5_mana_level=1,z_just-ignore=1204,elements_mainlevel=..9999}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Du hast keine 10.000 Level"}]
execute as @s[scores={z_just-ignore=1204}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_villager_stage-5_mana_level=2,elements_villager_stage-5_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"So jetzt noch fünf Permanente Herzen von dir!"},"\n","\n",{"text":"Nimm","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1205"}}]
execute as @s[scores={elements_villager_stage-5_mana_level=2,elements_villager_stage-5_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-5_mana_clicked 0
execute as @s[scores={elements_villager_stage-5_mana_level=2,z_just-ignore=1205,elements_maxhealth=..10}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Du hast zu Wenig Maximale Leben!"}]
execute as @s[scores={elements_villager_stage-5_mana_level=2,z_just-ignore=1205,elements_maxhealth=11..}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Perfekt! Ab jetzt hast du eine Regeneration von 3 Mana pro Sekunde und kannst deine Mana-Items schneller verwenden!"}]
execute as @s[scores={elements_villager_stage-5_mana_level=2,z_just-ignore=1205,elements_maxhealth=11..}] run scoreboard players set @s elements_villager_stage-5_mana_level 3
execute as @s[scores={z_just-ignore=1205}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_villager_stage-5_mana_level=3}] run scoreboard players set @s elements_mana_regeneration-per-sec 3
execute as @s[scores={elements_villager_stage-5_mana_level=3}] run scoreboard players remove @s elements_maxhealth 10
execute as @s[scores={elements_villager_stage-5_mana_level=3}] run scoreboard players set @s elements_villager_stage-5_mana_level 4

execute as @s[scores={elements_villager_stage-5_mana_level=4,elements_villager_stage-5_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_5.mana.name.chat","color":"yellow"},{"text":"Mehr kann ich leider nicht für dich tun!"}]
execute as @s[scores={elements_villager_stage-5_mana_level=4,elements_villager_stage-5_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-5_mana_clicked 0

