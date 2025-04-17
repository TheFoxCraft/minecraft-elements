execute as @e[type=minecraft:interaction,tag=techniker] at @s on target run tag @s add techniker
execute as @s[tag=techniker] run scoreboard players set @s elements_techniker_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=techniker,distance=..10] run data remove entity @s interaction
tag @s remove techniker

#000


execute as @s[scores={elements_techniker_level=0,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Willkommen in deiner neuen Heimatdimension, "},{"selector":"@s","color":"gold"},{"text": "!"},"\n",{"text":"Es ist wichtig, dass du darüber informiert bist, dass es aufgrund des Verschwindens des Energiekerns zu weiteren Störungen in der Welt kommen kann. Enderkisten sind beispielsweise äußerst instabil, daher solltest du keine Gegenstände hineinlegen, da sie jederzeit verschwinden könnten!"},"\n","\n",{"text":"Alles Klar!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 5"}}]
execute as @s[scores={elements_techniker_level=0,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=0,z_just-ignore=5}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Außderdem solltest du wissen, dass du vorerst gestrandet bist. Es besteht derzeit keine Möglichkeit, Kontakt zu den anderen Dimensionen herzustellen."},"\n","\n",{"text":"Wie können wir das ändern?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 6"}}]
execute as @s[scores={z_just-ignore=5}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_techniker_level=0,z_just-ignore=6}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hilf mir ein wenig, und ich kann möglicherweise wieder eine Verbindung herstellen"},"\n","\n",{"text":"Was muss ich tun?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 7"}}]
execute as @s[scores={z_just-ignore=6}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_techniker_level=0,z_just-ignore=7}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Ich benötige einige Ressourcen, und dann können wir weitersehen."},"\n","\n",{"text":"Ich bin dabei!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 8"}}]
execute as @s[scores={z_just-ignore=7}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_techniker_level=0,z_just-ignore=8,elements_homedimension=1..3}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Bringe mir zu Beginn 200 Bruchstein. Und übrigens, bevor ich es vergesse, hier eine kleine Starterbox, damit du in dieser Dimension überleben kannst"}]
execute as @s[scores={elements_techniker_level=0,z_just-ignore=8,elements_homedimension=1..3}] run scoreboard players set @s elements_techniker_level 1
execute as @s[scores={elements_techniker_level=0,z_just-ignore=8,elements_homedimension=1..3}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_techniker_level=0,z_just-ignore=8,elements_homedimension=4}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Bringe mir zu Beginn 200 Basalt. Und übrigens, bevor ich es vergesse, hier eine kleine Starterbox, damit du in dieser Dimension überleben kannst"}]
execute as @s[scores={elements_techniker_level=0,z_just-ignore=8,elements_homedimension=4}] run scoreboard players set @s elements_techniker_level 1
execute as @s[scores={z_just-ignore=8}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_techniker_level=1,elements_homedimension=1}] run function elements:sonstiges/savely_give_loot {id:"elements:items/other/starter_box/ocean"}
execute as @s[scores={elements_techniker_level=1,elements_homedimension=2..3}] run function elements:sonstiges/savely_give_loot {id:"elements:items/other/starter_box/stone_sky"}
execute as @s[scores={elements_techniker_level=1,elements_homedimension=4}] run function elements:sonstiges/savely_give_loot {id:"elements:items/other/starter_box/nether"}
execute as @s[scores={elements_techniker_level=1}] run scoreboard players set @s elements_techniker_level 2

execute as @s[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=1..3}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du die 200 Steine dabei?"},"\n","\n",{"text":"Ja, hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 9"}}]
execute as @s[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=1..3}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=2,elements_homedimension=1..3,z_just-ignore=9,elements_inv_cobblestone=200..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Wunderbar! Und du wirst bemerkt haben, dass du deine Mining-Fähigkeiten leveln kannst. Je höher dein Mininglevel ist, desto mehr Steine erhältst du beim Abbau. Jedes Level erhöht die Dropmenge um 5% (Additiv). Ab Level 20 verdoppelt sich die Anzahl der Steine, ab Level 40 verdreifacht sie sich und so weiter"}]
execute as @s[scores={elements_techniker_level=2,elements_homedimension=1..3,z_just-ignore=9,elements_inv_cobblestone=200..}] run clear @s cobblestone 200
execute as @s[scores={elements_techniker_level=2,elements_homedimension=1..3,z_just-ignore=9,elements_inv_cobblestone=200..}] run scoreboard players set @s elements_techniker_level 3
execute as @s[scores={elements_techniker_level=2,elements_homedimension=1..3,z_just-ignore=9,elements_inv_cobblestone=..199}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Stein!"}]
execute as @s[scores={z_just-ignore=9,elements_homedimension=1..3}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=4}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du die 200 Basalt dabei?"},"\n","\n",{"text":"Ja, hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 9"}}]
execute as @s[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=4}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=2,elements_homedimension=4,z_just-ignore=9,elements_inv_basalt=200..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Wunderbar! Und du wirst bemerkt haben, dass du deine Mining-Fähigkeiten leveln kannst. Je höher dein Mininglevel ist, desto mehr Steine erhältst du beim Abbau. Jedes Level erhöht die Dropmenge um 5% (Additiv). Ab Level 20 verdoppelt sich die Anzahl der Steine, ab Level 40 verdreifacht sie sich und so weiter"}]
execute as @s[scores={elements_techniker_level=2,elements_homedimension=4,z_just-ignore=9,elements_inv_basalt=200..}] run clear @s basalt 200
execute as @s[scores={elements_techniker_level=2,elements_homedimension=4,z_just-ignore=9,elements_inv_basalt=200..}] run scoreboard players set @s elements_techniker_level 3
execute as @s[scores={elements_techniker_level=2,elements_homedimension=4,z_just-ignore=9,elements_inv_basalt=..199}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Basalt!"}]
execute as @s[scores={z_just-ignore=9}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=3,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Als nächstes benötige ich etwas organisches Material. Kannst du mir bitte 100 Eichenstämme bringen?"},"\n","\n",{"text":"Mach ich!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 10"}}]
execute as @s[scores={elements_techniker_level=3,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=3,z_just-ignore=10}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Ich warte hier so lange."}]
execute as @s[scores={elements_techniker_level=3,z_just-ignore=10}] run scoreboard players set @s elements_techniker_level 4
execute as @s[scores={z_just-ignore=10}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=4,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du die 100 Eichenstämme dabei?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 11"}}]
execute as @s[scores={elements_techniker_level=4,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=4,z_just-ignore=11,elements_inv_oaklog=100..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Wir machen Fortschritte! Du hast sicherlich auch bemerkt, dass du durch das fällen von Bäumen auch deine Fähigkeiten als Waldarbeiter levelst. Bei einigen Holzsorten erhöht das Level deinen Ertrag."}]
execute as @s[scores={elements_techniker_level=4,z_just-ignore=11,elements_inv_oaklog=100..}] run clear @s oak_log 100
execute as @s[scores={elements_techniker_level=4,z_just-ignore=11,elements_inv_oaklog=100..}] run scoreboard players set @s elements_techniker_level 5
execute as @s[scores={elements_techniker_level=4,z_just-ignore=11,elements_inv_oaklog=..99}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Eichenstämme!"}]
execute as @s[scores={z_just-ignore=11}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=5,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Als nächstes wären auch 16 Knochenmehl hilfreich. Das zeigt auch, dass du langsam hier Fuß gefasst hast."},"\n","\n",{"text":"Kriege ich organisiert!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 12"}}]
execute as @s[scores={elements_techniker_level=5,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=5,z_just-ignore=12}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Ich warte hier so lange."}]
execute as @s[scores={elements_techniker_level=5,z_just-ignore=12}] run scoreboard players set @s elements_techniker_level 6
execute as @s[scores={z_just-ignore=12}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=6,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du die 16 Knochenmehl dabei?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 13"}}]
execute as @s[scores={elements_techniker_level=6,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=6,z_just-ignore=13,elements_inv_fake_bonemeal=16..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Sehr gut! Um all das Grünzeug anzubauen musstest du sicher Felder bestellen. Durch die Feldarbeit kannst du auch deine Farming-Fähigkeiten leveln. Hierbei erhältst du ebenfalls einen höheren Ertrag bei einigen Pflanzen, je höher dein Farming-Level ist."}]
execute as @s[scores={elements_techniker_level=6,z_just-ignore=13,elements_inv_fake_bonemeal=16..}] run clear @s white_dye[custom_model_data=1] 16
execute as @s[scores={elements_techniker_level=6,z_just-ignore=13,elements_inv_fake_bonemeal=16..}] run scoreboard players set @s elements_techniker_level 7
execute as @s[scores={elements_techniker_level=6,z_just-ignore=13,elements_inv_fake_bonemeal=..15}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Knochenmehl!"}]
execute as @s[scores={z_just-ignore=13}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=7,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du wirst festgestellt haben, dass du bisher überraschend viele Erfahrungspunkte gesammelt hast. Sie fungieren in dieser Welt als eine Art Währung. Für 50 Level werde ich dir eine Möglichkeit beschaffen, die Dimensionen der anderen Spieler zu besuchen!"},"\n","\n",{"text":"Ich halte mich ran!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 14"}}]
execute as @s[scores={elements_techniker_level=7,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=7,z_just-ignore=14}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Melde dich bei mir, wenn du soweit bist."}]
execute as @s[scores={elements_techniker_level=7,z_just-ignore=14}] run scoreboard players set @s elements_techniker_level 9
execute as @s[scores={z_just-ignore=14}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=9,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du die 50 Level gesammelt?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 15"}}]
execute as @s[scores={elements_techniker_level=9,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=9,z_just-ignore=15,elements_mainlevel=50..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Perfekt! Ich bereite mal etwas vor."}]
execute as @s[scores={elements_techniker_level=9,z_just-ignore=15,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @s[scores={elements_techniker_level=9,z_just-ignore=15,elements_mainlevel=50..}] run scoreboard players set @s elements_techniker_level 10
execute as @s[scores={elements_techniker_level=9,z_just-ignore=15,elements_mainlevel=..49}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={z_just-ignore=15}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=10,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Mir den von dir gelieferten Gegenstände konnte ich dir Enderkiste reparieren. Tatsächlich habe ich sie sogar mehr als nur repariert, sondern eher modifiziert. Bitte lege auch weiterhin keine Gegenstände hinein, denn sie dient nun als dein Werkzeug zur Reise durch die Dimensionen."},"\n","\n",{"text":"Ok krass. Wie geht das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 16"}}]
execute as @s[scores={elements_techniker_level=10,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=10,z_just-ignore=16}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Öffne deine Enderkiste. Dort kannst du eine Dimension auswählen. Klickst du eine an, wirst du dorthin teleportiert."}]
execute as @s[scores={elements_techniker_level=10,z_just-ignore=16}] run scoreboard players set @s elements_enderchest_level_tp 1
execute as @s[scores={elements_techniker_level=10,z_just-ignore=16}] run scoreboard players set @s elements_enderchest_settings_tp-mode 1
execute as @s[scores={elements_techniker_level=10,z_just-ignore=16}] run scoreboard players set @s elements_techniker_level 11
execute as @s[scores={z_just-ignore=16}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=11,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Leider ist es vorest nur möglich in die Dimensionen der anderen Spieler zu reisen, aber noch nicht zurück in den Villagerhub. Ich muss wohl noch etwas tüfteln, um diese Funktion zu ermöglichen."},"\n",{"text":"Dafür kann ich dir ein anderes cooles Feature anbieten: Collections. Dort kannst du Belohnungen für gefarmte Ressourcen abholen."},"\n","\n",{"text":"Das klingt sehr Spannend, schaue ich mir gleich an. Aber kann ich dir mit dem HUB helfen?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 17"}}]
execute as @s[scores={elements_techniker_level=11,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=11,z_just-ignore=17}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Besorge mir einige Materialien von Monstern. Ich benötige 16 verrottetes Fleisch, 16 Knochen und 16 Schwarzpulver. Vielleicht können dir die anderen Spieler helfen, wenn es in deiner Dimension schwierig ist, all diese Dinge zu sammeln. Und vergiss nicht deine Belohnungen bei den Collections abzuholen!"}]
execute as @s[scores={elements_techniker_level=11,z_just-ignore=17}] run scoreboard players set @s elements_enderchest_level_collections 1
execute as @s[scores={elements_techniker_level=11,z_just-ignore=17}] run scoreboard players set @s elements_techniker_level 12
execute as @s[scores={z_just-ignore=17}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=12,elements_techniker_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du 16 verrottetes Fleisch, 16 Knochen und 16 Schwarzpulver dabei?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 18"}}]
execute as @s[scores={elements_techniker_level=12,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Vielen Dank!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=16..}] run scoreboard players set @s elements_techniker_level 13
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={elements_techniker_level=12,z_just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Materialien!"}]
execute as @s[scores={z_just-ignore=18}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=13}] run clear @s bone 16
execute as @s[scores={elements_techniker_level=13}] run clear @s rotten_flesh 16
execute as @s[scores={elements_techniker_level=13}] run clear @s gunpowder 16
execute as @s[scores={elements_techniker_level=13}] run scoreboard players set @s elements_techniker_level 14

execute as @s[scores={elements_techniker_level=14,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Wir sind schon sehr nah dran. Um eine Verbindung zum Villager-Hub herzustellen benötige ich erneut 50 Level von dir."},"\n","\n",{"text":"Ich mach mich an die Arbeit!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 19"}}]
execute as @s[scores={elements_techniker_level=14,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=14,z_just-ignore=19}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Ich warte derweil."}]
execute as @s[scores={elements_techniker_level=14,z_just-ignore=19}] run scoreboard players set @s elements_techniker_level 15
execute as @s[scores={z_just-ignore=19}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=15,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Hast du die 50 Level für den Villager-Hub?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 20"}}]
execute as @s[scores={elements_techniker_level=15,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=15,z_just-ignore=20,elements_mainlevel=50..}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Perfekt!"}]
execute as @s[scores={elements_techniker_level=15,z_just-ignore=20,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @s[scores={elements_techniker_level=15,z_just-ignore=20,elements_mainlevel=50..}] run scoreboard players set @s elements_techniker_level 16
execute as @s[scores={elements_techniker_level=15,z_just-ignore=20,elements_mainlevel=..49}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={z_just-ignore=20}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=16,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Der Villager-Hub fungiert als Verbindungspunkt zu allen Dimensionen und bietet zahlreiche Dorfbewohner, die dir bei der Suche nach dem Energiekern helfen und dich weiter stärken können."},"\n","\n",{"text":"Wie kann ich da hin?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 21"}}]
execute as @s[scores={elements_techniker_level=16,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=16,z_just-ignore=21}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Benutze wieder die Enderkiste. Du kannst mit einer neuen Möglichkeit auch zum Villagerhub reisen."}]
execute as @s[scores={elements_techniker_level=16,z_just-ignore=21}] run scoreboard players set @s elements_techniker_level 17
execute as @s[scores={z_just-ignore=21}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.techniker.name.chat","color":"yellow"},{"text":"Du solltest dich im Villager-Hub weiter umschauen. Dort gibt es bestimmt jemanden der mit dir reden möchte! Ich allerdings, kann nun nichts mehr für dich tun!"}]
execute as @s[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_enderchest_level_tp 2
execute as @s[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_enderchest_settings_tp-mode 1
execute as @s[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_enderchest_settings_dimension 1
execute as @s[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_message_cooldown 1200
execute as @s[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_level 18
execute as @s[scores={elements_techniker_level=18,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @s[scores={elements_techniker_level=18}] run scoreboard players set @s elements_techniker_level 19



# Random Messages.
execute as @s[scores={elements_techniker_level=19,elements_techniker_clicked=1,elements_techniker_message_cooldown=0}] store result score @s elements_techniker_random_type run random value 1..3
execute as @s[scores={elements_techniker_level=19,elements_techniker_clicked=1,elements_techniker_message_cooldown=0}] run scoreboard players set @s elements_techniker_message_cooldown 1200
execute as @s[scores={elements_techniker_level=19,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0

#Cooldown
execute as @s[scores={elements_techniker_message_cooldown=1..}] run scoreboard players remove @s elements_techniker_message_cooldown 1

# Zitate
execute as @s[scores={elements_techniker_random_type=1}] store result score @s elements_techniker_random_message run random value 1..141
execute as @s[scores={elements_techniker_random_type=1}] run function elements:villager/techniker_sprueche/zitate
# Witzige Sprüche
execute as @s[scores={elements_techniker_random_type=2}] store result score @s elements_techniker_random_message run random value 1..40
execute as @s[scores={elements_techniker_random_type=2}] run function elements:villager/techniker_sprueche/lustige_sprueche
# Random Fakten
execute as @s[scores={elements_techniker_random_type=3}] store result score @s elements_techniker_random_message run random value 1..41
execute as @s[scores={elements_techniker_random_type=3}] run function elements:villager/techniker_sprueche/random_fakten


# Random Message End
scoreboard players set @s elements_techniker_random_message 0
scoreboard players set @s elements_techniker_random_type 0