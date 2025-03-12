execute as @e[type=minecraft:interaction,tag=techniker] at @s on target run tag @s add techniker
execute as @a[tag=techniker] run scoreboard players set @s elements_techniker_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=techniker,distance=..10] run data remove entity @s interaction
tag @a remove techniker

#000


execute as @a[scores={elements_techniker_level=0,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Willkommen in deiner neuen Heimatdimension, "},{"selector":"@s","color":"gold"},{"text": "!"},"\n",{"text":"Es ist wichtig, dass du darüber informiert bist, dass es aufgrund des Verschwindens des Energiekerns zu weiteren Störungen in der Welt kommen kann. Enderkisten sind beispielsweise äußerst instabil, daher solltest du keine Gegenstände hineinlegen, da sie jederzeit verschwinden könnten!"},"\n","\n",{"text":"Alles Klar!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 5"}}]
execute as @a[scores={elements_techniker_level=0,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=0,just-ignore=5}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Außderdem solltest du wissen, dass du vorerst gestrandet bist. Es besteht derzeit keine Möglichkeit, Kontakt zu den anderen Dimensionen herzustellen."},"\n","\n",{"text":"Wie können wir das ändern?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 6"}}]
execute as @a[scores={just-ignore=5}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_techniker_level=0,just-ignore=6}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hilf mir ein wenig, und ich kann möglicherweise wieder eine Verbindung herstellen"},"\n","\n",{"text":"Was muss ich tun?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 7"}}]
execute as @a[scores={just-ignore=6}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_techniker_level=0,just-ignore=7}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich benötige einige Ressourcen, und dann können wir weitersehen."},"\n","\n",{"text":"Ich bin dabei!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 8"}}]
execute as @a[scores={just-ignore=7}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_techniker_level=0,just-ignore=8,elements_homedimension=1..3}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Bringe mir zu Beginn 200 Bruchstein. Und übrigens, bevor ich es vergesse, hier eine kleine Starterbox, damit du in dieser Dimension überleben kannst"}]
execute as @a[scores={elements_techniker_level=0,just-ignore=8,elements_homedimension=1..3}] run scoreboard players set @s elements_techniker_level 1
execute as @a[scores={elements_techniker_level=0,just-ignore=8,elements_homedimension=1..3}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_techniker_level=0,just-ignore=8,elements_homedimension=4}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Bringe mir zu Beginn 200 Basalt. Und übrigens, bevor ich es vergesse, hier eine kleine Starterbox, damit du in dieser Dimension überleben kannst"}]
execute as @a[scores={elements_techniker_level=0,just-ignore=8,elements_homedimension=4}] run scoreboard players set @s elements_techniker_level 1
execute as @a[scores={just-ignore=8}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_techniker_level=1,elements_homedimension=1}] run give @s shulker_box[custom_name='{"text":"Starterbox"}',container=[{slot:0,item:{id:"minecraft:ice",count:1b}},{slot:1,item:{id:"minecraft:lava_bucket",count:1b}},{slot:4,item:{id:"minecraft:oak_sapling",count:1b}},{slot:5,item:{id:"minecraft:spruce_sapling",count:1b}},{slot:7,item:{id:"minecraft:pointed_dripstone",count:1b}},{slot:8,item:{id:"minecraft:moss_block",count:1b}},{slot:9,item:{id:"minecraft:melon_slice",count:1b}},{slot:10,item:{id:"minecraft:pumpkin_seeds",count:1b}},{slot:12,item:{id:"minecraft:dark_oak_sapling",count:4}},{slot:13,item:{id:"minecraft:birch_sapling",count:1b}},{slot:14,item:{id:"minecraft:jungle_sapling",count:1b}},{slot:16,item:{id:"minecraft:sponge",count:5}},{slot:17,item:{id:"minecraft:grass_block",count:64}},{slot:18,item:{id:"minecraft:sugar_cane",count:1b}},{slot:19,item:{id:"minecraft:cactus",count:1b}},{slot:21,item:{id:"minecraft:mangrove_propagule",count:1b}},{slot:22,item:{id:"minecraft:acacia_sapling",count:1b}},{slot:23,item:{id:"minecraft:cherry_sapling",count:1b}},{slot:25,item:{id:"minecraft:crimson_nylium",count:1b}},{slot:26,item:{id:"minecraft:warped_nylium",count:1b}}]] 1
execute as @a[scores={elements_techniker_level=1,elements_homedimension=2..3}] run give @s shulker_box[custom_name='{"text":"Starterbox"}',container=[{slot:0,item:{id:"minecraft:ice",count:1b}},{slot:1,item:{id:"minecraft:lava_bucket",count:1b}},{slot:4,item:{id:"minecraft:oak_sapling",count:1b}},{slot:5,item:{id:"minecraft:spruce_sapling",count:1b}},{slot:7,item:{id:"minecraft:pointed_dripstone",count:1b}},{slot:8,item:{id:"minecraft:moss_block",count:1b}},{slot:9,item:{id:"minecraft:melon_slice",count:1b}},{slot:10,item:{id:"minecraft:pumpkin_seeds",count:1b}},{slot:12,item:{id:"minecraft:dark_oak_sapling",count:4}},{slot:13,item:{id:"minecraft:birch_sapling",count:1b}},{slot:14,item:{id:"minecraft:jungle_sapling",count:1b}},{slot:17,item:{id:"minecraft:grass_block",count:64}},{slot:18,item:{id:"minecraft:sugar_cane",count:1b}},{slot:19,item:{id:"minecraft:cactus",count:1b}},{slot:21,item:{id:"minecraft:mangrove_propagule",count:1b}},{slot:22,item:{id:"minecraft:acacia_sapling",count:1b}},{slot:23,item:{id:"minecraft:cherry_sapling",count:1b}},{slot:25,item:{id:"minecraft:crimson_nylium",count:1b}},{slot:26,item:{id:"minecraft:warped_nylium",count:1b}}]] 1
execute as @a[scores={elements_techniker_level=1,elements_homedimension=4}] run give @s shulker_box[custom_name='{"text":"Starterbox"}',container=[{slot:0,item:{id:"minecraft:blue_ice",count:10b}},{slot:1,item:{id:"minecraft:lava_bucket",count:1b}},{slot:2,item:{id:"minecraft:soul_soil",count:10b}},{slot:4,item:{id:"minecraft:oak_sapling",count:1b}},{slot:5,item:{id:"minecraft:spruce_sapling",count:1b}},{slot:7,item:{id:"minecraft:pointed_dripstone",count:1b}},{slot:8,item:{id:"minecraft:moss_block",count:1b}},{slot:9,item:{id:"minecraft:melon_slice",count:1b}},{slot:10,item:{id:"minecraft:pumpkin_seeds",count:1b}},{slot:12,item:{id:"minecraft:dark_oak_sapling",count:4}},{slot:13,item:{id:"minecraft:birch_sapling",count:1b}},{slot:14,item:{id:"minecraft:jungle_sapling",count:1b}},{slot:17,item:{id:"minecraft:grass_block",count:64}},{slot:18,item:{id:"minecraft:sugar_cane",count:1b}},{slot:19,item:{id:"minecraft:cactus",count:1b}},{slot:21,item:{id:"minecraft:mangrove_propagule",count:1b}},{slot:22,item:{id:"minecraft:acacia_sapling",count:1b}},{slot:23,item:{id:"minecraft:cherry_sapling",count:1b}},{slot:25,item:{id:"minecraft:crimson_nylium",count:1b}},{slot:26,item:{id:"minecraft:warped_nylium",count:1b}}]] 1
execute as @a[scores={elements_techniker_level=1}] run scoreboard players set @s elements_techniker_level 2

execute as @a[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=1..3}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 200 Steine dabei?"},"\n","\n",{"text":"Ja, hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 9"}}]
execute as @a[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=1..3}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=2,elements_homedimension=1..3,just-ignore=9,elements_inv_cobblestone=200..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Wunderbar! Und du wirst bemerkt haben, dass du deine Mining-Fähigkeiten leveln kannst. Je höher dein Mininglevel ist, desto mehr Steine erhältst du beim Abbau. Jedes Level erhöht die Dropmenge um 5% (Additiv). Ab Level 20 verdoppelt sich die Anzahl der Steine, ab Level 40 verdreifacht sie sich und so weiter"}]
execute as @a[scores={elements_techniker_level=2,elements_homedimension=1..3,just-ignore=9,elements_inv_cobblestone=200..}] run clear @s cobblestone 200
execute as @a[scores={elements_techniker_level=2,elements_homedimension=1..3,just-ignore=9,elements_inv_cobblestone=200..}] run scoreboard players set @s elements_techniker_level 3
execute as @a[scores={elements_techniker_level=2,elements_homedimension=1..3,just-ignore=9,elements_inv_cobblestone=..199}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Stein!"}]
execute as @a[scores={just-ignore=9,elements_homedimension=1..3}] run scoreboard players set @s just-ignore 0
execute as @a[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=4}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 200 Basalt dabei?"},"\n","\n",{"text":"Ja, hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 9"}}]
execute as @a[scores={elements_techniker_level=2,elements_techniker_clicked=1,elements_homedimension=4}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=2,elements_homedimension=4,just-ignore=9,elements_inv_basalt=200..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Wunderbar! Und du wirst bemerkt haben, dass du deine Mining-Fähigkeiten leveln kannst. Je höher dein Mininglevel ist, desto mehr Steine erhältst du beim Abbau. Jedes Level erhöht die Dropmenge um 5% (Additiv). Ab Level 20 verdoppelt sich die Anzahl der Steine, ab Level 40 verdreifacht sie sich und so weiter"}]
execute as @a[scores={elements_techniker_level=2,elements_homedimension=4,just-ignore=9,elements_inv_basalt=200..}] run clear @s basalt 200
execute as @a[scores={elements_techniker_level=2,elements_homedimension=4,just-ignore=9,elements_inv_basalt=200..}] run scoreboard players set @s elements_techniker_level 3
execute as @a[scores={elements_techniker_level=2,elements_homedimension=4,just-ignore=9,elements_inv_basalt=..199}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Basalt!"}]
execute as @a[scores={just-ignore=9}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=3,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Als nächstes benötige ich etwas organisches Material. Kannst du mir bitte 100 Eichenstämme bringen?"},"\n","\n",{"text":"Mach ich!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 10"}}]
execute as @a[scores={elements_techniker_level=3,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=3,just-ignore=10}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich warte hier so lange."}]
execute as @a[scores={elements_techniker_level=3,just-ignore=10}] run scoreboard players set @s elements_techniker_level 4
execute as @a[scores={just-ignore=10}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=4,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 100 Eichenstämme dabei?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 11"}}]
execute as @a[scores={elements_techniker_level=4,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=4,just-ignore=11,elements_inv_oaklog=100..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Wir machen Fortschritte! Du hast sicherlich auch bemerkt, dass du durch das fällen von Bäumen auch deine Fähigkeiten als Waldarbeiter levelst. Bei einigen Holzsorten erhöht das Level deinen Ertrag."}]
execute as @a[scores={elements_techniker_level=4,just-ignore=11,elements_inv_oaklog=100..}] run clear @s oak_log 100
execute as @a[scores={elements_techniker_level=4,just-ignore=11,elements_inv_oaklog=100..}] run scoreboard players set @s elements_techniker_level 5
execute as @a[scores={elements_techniker_level=4,just-ignore=11,elements_inv_oaklog=..99}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Eichenstämme!"}]
execute as @a[scores={just-ignore=11}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=5,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Als nächstes wären auch 16 Knochenmehl hilfreich. Das zeigt auch, dass du langsam hier Fuß gefasst hast."},"\n","\n",{"text":"Kriege ich organisiert!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 12"}}]
execute as @a[scores={elements_techniker_level=5,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=5,just-ignore=12}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich warte hier so lange."}]
execute as @a[scores={elements_techniker_level=5,just-ignore=12}] run scoreboard players set @s elements_techniker_level 6
execute as @a[scores={just-ignore=12}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=6,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 16 Knochenmehl dabei?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 13"}}]
execute as @a[scores={elements_techniker_level=6,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=6,just-ignore=13,elements_inv_bonemeal=16..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Sehr gut! Um all das Grünzeug anzubauen musstest du sicher Felder bestellen. Durch die Feldarbeit kannst du auch deine Farming-Fähigkeiten leveln. Hierbei erhältst du ebenfalls einen höheren Ertrag bei einigen Pflanzen, je höher dein Farming-Level ist."}]
execute as @a[scores={elements_techniker_level=6,just-ignore=13,elements_inv_bonemeal=16..}] run clear @s bone_meal 16
execute as @a[scores={elements_techniker_level=6,just-ignore=13,elements_inv_bonemeal=16..}] run scoreboard players set @s elements_techniker_level 7
execute as @a[scores={elements_techniker_level=6,just-ignore=13,elements_inv_bonemeal=..15}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Knochenmehl!"}]
execute as @a[scores={just-ignore=13}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=7,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du wirst festgestellt haben, dass du bisher überraschend viele Erfahrungspunkte gesammelt hast. Sie fungieren in dieser Welt als eine Art Währung. Für 50 Level werde ich dir eine Möglichkeit beschaffen, die Dimensionen der anderen Spieler zu besuchen!"},"\n","\n",{"text":"Ich halte mich ran!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 14"}}]
execute as @a[scores={elements_techniker_level=7,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=7,just-ignore=14}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Melde dich bei mir, wenn du soweit bist."}]
execute as @a[scores={elements_techniker_level=7,just-ignore=14}] run scoreboard players set @s elements_techniker_level 9
execute as @a[scores={just-ignore=14}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=9,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 50 Level gesammelt?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 15"}}]
execute as @a[scores={elements_techniker_level=9,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=9,just-ignore=15,elements_mainlevel=50..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Perfekt! Ich bereite mal etwas vor."}]
execute as @a[scores={elements_techniker_level=9,just-ignore=15,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @a[scores={elements_techniker_level=9,just-ignore=15,elements_mainlevel=50..}] run scoreboard players set @s elements_techniker_level 10
execute as @a[scores={elements_techniker_level=9,just-ignore=15,elements_mainlevel=..49}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Level!"}]
execute as @a[scores={just-ignore=15}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=10,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Mir den von dir gelieferten Gegenstände konnte ich dir Enderkiste reparieren. Tatsächlich habe ich sie sogar mehr als nur repariert, sondern eher modifiziert. Bitte lege auch weiterhin keine Gegenstände hinein, denn sie dient nun als dein Werkzeug zur Reise durch die Dimensionen."},"\n","\n",{"text":"Ok krass. Wie geht das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 16"}}]
execute as @a[scores={elements_techniker_level=10,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=10,just-ignore=16}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Öffne deine Enderkiste. Dort kannst du eine Dimension auswählen. Klickst du eine an, wirst du dorthin teleportiert."}]
execute as @a[scores={elements_techniker_level=10,just-ignore=16}] run scoreboard players set @s elements_enderchest_level_tp 1
execute as @a[scores={elements_techniker_level=10,just-ignore=16}] run scoreboard players set @s elements_enderchest_settings_tp-mode 1
execute as @a[scores={elements_techniker_level=10,just-ignore=16}] run scoreboard players set @s elements_techniker_level 11
execute as @a[scores={just-ignore=16}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=11,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Leider ist es vorest nur möglich in die Dimensionen der anderen Spieler zu reisen, aber noch nicht zurück in den Villagerhub. Ich muss wohl noch etwas tüfteln, um diese Funktion zu ermöglichen."},"\n",{"text":"Dafür kann ich dir ein anderes cooles Feature anbieten: Collections. Dort kannst du Belohnungen für gefarmte Ressourcen abholen."},"\n","\n",{"text":"Das klingt sehr Spannend, schaue ich mir gleich an. Aber kann ich dir mit dem HUB helfen?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 17"}}]
execute as @a[scores={elements_techniker_level=11,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=11,just-ignore=17}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Besorge mir einige Materialien von Monstern. Ich benötige 16 verrottetes Fleisch, 16 Knochen und 16 Schwarzpulver. Vielleicht können dir die anderen Spieler helfen, wenn es in deiner Dimension schwierig ist, all diese Dinge zu sammeln. Und vergiss nicht deine Belohnungen bei den Collections abzuholen!"}]
execute as @a[scores={elements_techniker_level=11,just-ignore=17}] run scoreboard players set @s elements_enderchest_level_collections 1
execute as @a[scores={elements_techniker_level=11,just-ignore=17}] run scoreboard players set @s elements_techniker_level 12
execute as @a[scores={just-ignore=17}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=12,elements_techniker_clicked=1}] run tellraw @s ["",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du 16 verrottetes Fleisch, 16 Knochen und 16 Schwarzpulver dabei?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 18"}}]
execute as @a[scores={elements_techniker_level=12,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Vielen Dank!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=16..}] run scoreboard players set @s elements_techniker_level 13
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=..15}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=..15,elements_inv_rotten_flesh=16..,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={elements_techniker_level=12,just-ignore=18,elements_inv_bone=16..,elements_inv_rotten_flesh=..15,elements_inv_gunpowder=16..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Materialien!"}]
execute as @a[scores={just-ignore=18}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=13}] run clear @s bone 16
execute as @a[scores={elements_techniker_level=13}] run clear @s rotten_flesh 16
execute as @a[scores={elements_techniker_level=13}] run clear @s gunpowder 16
execute as @a[scores={elements_techniker_level=13}] run scoreboard players set @s elements_techniker_level 14

execute as @a[scores={elements_techniker_level=14,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Wir sind schon sehr nah dran. Um eine Verbindung zum Villager-Hub herzustellen benötige ich erneut 50 Level von dir."},"\n","\n",{"text":"Ich mach mich an die Arbeit!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 19"}}]
execute as @a[scores={elements_techniker_level=14,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=14,just-ignore=19}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Ich warte derweil."}]
execute as @a[scores={elements_techniker_level=14,just-ignore=19}] run scoreboard players set @s elements_techniker_level 15
execute as @a[scores={just-ignore=19}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=15,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Hast du die 50 Level für den Villager-Hub?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 20"}}]
execute as @a[scores={elements_techniker_level=15,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=15,just-ignore=20,elements_mainlevel=50..}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Perfekt!"}]
execute as @a[scores={elements_techniker_level=15,just-ignore=20,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @a[scores={elements_techniker_level=15,just-ignore=20,elements_mainlevel=50..}] run scoreboard players set @s elements_techniker_level 16
execute as @a[scores={elements_techniker_level=15,just-ignore=20,elements_mainlevel=..49}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Level!"}]
execute as @a[scores={just-ignore=20}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=16,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Der Villager-Hub fungiert als Verbindungspunkt zu allen Dimensionen und bietet zahlreiche Dorfbewohner, die dir bei der Suche nach dem Energiekern helfen und dich weiter stärken können."},"\n","\n",{"text":"Wie kann ich da hin?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 21"}}]
execute as @a[scores={elements_techniker_level=16,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0
execute as @a[scores={elements_techniker_level=16,just-ignore=21}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Benutze wieder die Enderkiste. Du kannst mit einer neuen Möglichkeit auch zum Villagerhub reisen."}]
execute as @a[scores={elements_techniker_level=16,just-ignore=21}] run scoreboard players set @s elements_techniker_level 17
execute as @a[scores={just-ignore=21}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run tellraw @s ["","\n",{"text":"Techniker:","underlined":true,"color":"dark_red"},"\n",{"text":"Du solltest dich im Villager-Hub weiter umschauen. Dort gibt es bestimmt jemanden der mit dir reden möchte! Ich allerdings, kann nun nichts mehr für dich tun!"}]
execute as @a[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_enderchest_level_tp 2
execute as @a[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_enderchest_settings_tp-mode 1
execute as @a[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_enderchest_settings_dimension 1
execute as @a[scores={elements_techniker_level=17,elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_level 18
execute as @a[scores={elements_techniker_clicked=1}] run scoreboard players set @s elements_techniker_clicked 0







