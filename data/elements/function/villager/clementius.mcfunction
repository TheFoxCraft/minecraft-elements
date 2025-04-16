execute as @e[type=minecraft:interaction,tag=clementius] at @s on target run tag @s add clementius
execute as @s[tag=clementius] run scoreboard players set @s elements_clementius_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=clementius,distance=..10] run data remove entity @s interaction
tag @s remove clementius


#200

#element fishing rod crafting

execute as @s[scores={elements_clementius_clicked=1},tag=elements_has-all-items-for-fishing-rod] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Soso, sehr Interessante Sachen hast du da dabei! Ich sehe sehr Besondere und Stabile Materalien, die doch eine Super Angel ausmachen würden, findest du nicht auch? Aber deswegen bist du vermutlich auch hier. Aber kein Problem, für "},{"text":"1.000 Level","color": "green"},{"text": " kann ich dir deine Angel zusammenschmieden"},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 200"}}]
execute as @s[scores={elements_clementius_clicked=1},tag=elements_has-all-items-for-fishing-rod] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={z_just-ignore=200,elements_mainlevel=1000..},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Perfekt! Hier hast du deine Element Angel"}]
execute as @s[scores={z_just-ignore=200,elements_mainlevel=1000..},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -1000 levels
execute as @s[scores={z_just-ignore=200,elements_mainlevel=1000..},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run function elements:sonstiges/savely_give_loot {id:"elements:items/element_fishing_rod/common"}
execute as @s[scores={z_just-ignore=200,elements_mainlevel=1000..},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s stick[custom_model_data=2] 3
execute as @s[scores={z_just-ignore=200,elements_mainlevel=1000..},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s tripwire_hook[custom_model_data=1] 1
execute as @s[scores={z_just-ignore=200,elements_mainlevel=1000..},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s string 1
execute as @s[scores={z_just-ignore=200,elements_mainlevel=..999},tag=elements_has-all-items-for-fishing-rod] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={z_just-ignore=200}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=200}] run scoreboard players set @s z_just-ignore 0
#get_items
tag @s remove elements_has-all-items-for-fishing-rod
execute as @s[nbt={Inventory:[{id:"minecraft:stick",components:{"minecraft:custom_model_data":2},count:3},{id:"minecraft:tripwire_hook",components:{"minecraft:custom_model_data":1}},{id:"minecraft:string"}]}] run tag @s add elements_has-all-items-for-fishing-rod

#handelsplatz for update 1.6.0.0
execute as @s[scores={elements_clementius_clicked=1,elements_enderchest_level_handelsplatz=0}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Ich habe noch etwas für dich, das du eigentlich schon viel früher bekommen haben solltest, aber erst jetzt durch ein Update hinzugefügt wurde! Einen Handelsplatz! Dort kannst du deine Items für Token verkaufen, oder die der andern Kaufen. Dafür bräuchte ich allerdings 500 Level von dir!"},"\n","\n",{"text":"Kein Problem, das klingt cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 224"}}]
execute as @s[scores={elements_clementius_clicked=1,elements_enderchest_level_handelsplatz=0}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={z_just-ignore=224,elements_mainlevel=500..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Vielen Dank. Ich hab dir das Modul hinzugefügt! Viel Spaß beim Traden"}]
execute as @s[scores={z_just-ignore=224,elements_mainlevel=500..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -500 levels
execute as @s[scores={z_just-ignore=224,elements_mainlevel=500..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_enderchest_level_handelsplatz 1
execute as @s[scores={z_just-ignore=224,elements_mainlevel=..499}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={z_just-ignore=224}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=224}] run scoreboard players set @s z_just-ignore 0




#default dialoges

execute as @s[scores={elements_clementius_level=0,elements_clementius_clicked=1,elements_stats_eq=..59}] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Soso, ein Neuling! Ich habe eine Menge Mächtige Sachen zu bieten, aber einem NOOB wie dir verkaufe ich so etwas nicht! Komm wieder wenn du etwas mehr Erfahrung gesammelt hast!"},"\n","\n",{"text":"Was heißt das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 201"}}]
execute as @s[scores={elements_clementius_level=0,elements_clementius_clicked=1,elements_stats_eq=60..}] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Aha, das sieht doch schon besser aus, du hast dich also schon etwas eingelebt! Noob Status aufgehoben!"},"\n","\n",{"text":"Das ist gut!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 202"}}]
execute as @s[scores={elements_clementius_level=0,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0

execute as @s[scores={elements_clementius_level=0,z_just-ignore=201}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Spiele Erstmal ein wenig, entdecke die Welt und komme später wieder!"}]
execute as @s[scores={elements_clementius_level=0,z_just-ignore=201}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=201}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=0,z_just-ignore=202}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Ja, bei mir bekommst du jetzt eine Menge Coole Sachen, vor allem für deine Enderchest!"},"\n","\n",{"text":"Ok, cool! Hast du denn schon was für mich?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 203"}}]
execute as @s[scores={elements_clementius_level=0,z_just-ignore=202}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=202}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=0,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Ich habe etwas ganz besonderes für Dich! Einen Handelsplatz! Dort kannst du deine Items für Token verkaufen, oder die der andern Kaufen. Dafür bräuchte ich allerdings 75 Level von dir!"},"\n","\n",{"text":"Kein Problem, das klingt cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 223"}}]
execute as @s[scores={elements_clementius_level=0,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=0,z_just-ignore=223,elements_mainlevel=75..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Vielen Dank. Ich hab dir das Modul hinzugefügt! Viel Spaß beim Traden"}]
execute as @s[scores={elements_clementius_level=0,z_just-ignore=223,elements_mainlevel=75..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -75 levels
execute as @s[scores={elements_clementius_level=0,z_just-ignore=223,elements_mainlevel=75..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_enderchest_level_handelsplatz 1
execute as @s[scores={elements_clementius_level=0,z_just-ignore=223,elements_mainlevel=75..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 1
execute as @s[scores={elements_clementius_level=0,z_just-ignore=223,elements_mainlevel=..74}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={elements_clementius_level=0,z_just-ignore=223}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=223}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=1,z_just-ignore=203}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Ich hab auch noch mehr für dich. Wie du siehst, bin ich Schmied und kann deine Besonderen Items Verbessern, allerdings kann ich das nicht für alle Spieler tun, da würde ich ja nicht mehr fertig werden, deswegen kann ich dir deine Eigene Upgradschmiede verkaufen!"},"\n","\n",{"text":"Das klingt sehr interessant!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 204"}}]
execute as @s[scores={elements_clementius_level=1,z_just-ignore=203}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=203}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=1,z_just-ignore=204}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Das ist es in der Tat. Allerdings ist es auch nicht gerade Billig. Ich bräuchte 100 Komprimierten Bruchstein und 150 Level von dir."},"\n","\n",{"text":"Das ist eine Menge, aber ich melde mich wenn ich alles habe!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 205"}}]
execute as @s[scores={elements_clementius_level=1,z_just-ignore=204}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=204}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=1,z_just-ignore=205}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Lass dir ruhig Zeit. Ich warte hier auf dich"}]
execute as @s[scores={elements_clementius_level=1,z_just-ignore=205}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 2
execute as @s[scores={elements_clementius_level=1,z_just-ignore=205}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=205}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=2,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Da bist du ja wieder. Ok, alles dabei? Fangen wir mit den 100 Komprimierten Bruchstein an, hast du sie?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 206"}}]
execute as @s[scores={elements_clementius_level=2,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=2,z_just-ignore=206,elements_inv_compressed_cobblestone=100..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Vielen Dank."}]
execute as @s[scores={elements_clementius_level=2,z_just-ignore=206,elements_inv_compressed_cobblestone=100..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s cobbled_deepslate[custom_model_data=1] 100
execute as @s[scores={elements_clementius_level=2,z_just-ignore=206,elements_inv_compressed_cobblestone=100..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 3
execute as @s[scores={elements_clementius_level=2,z_just-ignore=206,elements_inv_compressed_cobblestone=..99}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Komprimierten Bruchstein!"}]
execute as @s[scores={elements_clementius_level=2,z_just-ignore=206}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=206}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=3,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Jetzt noch die 150 Level!."},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 207"}}]
execute as @s[scores={elements_clementius_level=3,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=3,z_just-ignore=207,elements_mainlevel=150..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Perfekt. Ich hab deiner Enderchest das Menü hinzugefügt!"},"\n","\n",{"text":"Ok, und wie Funktioniert es?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 208"}}]
execute as @s[scores={elements_clementius_level=3,z_just-ignore=207,elements_mainlevel=150..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -150 levels
execute as @s[scores={elements_clementius_level=3,z_just-ignore=207,elements_mainlevel=150..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 4
execute as @s[scores={elements_clementius_level=3,z_just-ignore=207,elements_mainlevel=..149}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={elements_clementius_level=3,z_just-ignore=207}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=207}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=4,elements_clementius_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Lege dein Item in den Linken Slot, wenn das Item gültig ist kannst du es für eine Bestimmte Zahl an Level Upgraden, diese sind Abhängig von der Seltenheit des Items. Wenn du genügend Level hast und auf Upgrade klickst, wird das neue Item im Rechten Slot synthetisiert. Das Alte Item wird dabei Vollständig zerstört, die Enchantments übertragen sich allerdings trotzdem"},"\n","\n",{"text":"Alles Klar, das schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 209"}}]
execute as @s[scores={elements_clementius_level=4,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=4,z_just-ignore=208}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Lege dein Item in den Linken Slot, wenn das Item gültig ist kannst du es für eine Bestimmte Zahl an Level Upgraden, diese sind Abhängig von der Seltenheit des Items. Wenn du genügend Level hast und auf Upgrad klickst, wird das neue Item im Rechten Slot synthetisiert. Das Alte Item wird dabei Vollständig zerstört, die Enchantments übertragen sich allerdings trotzdem"},"\n","\n",{"text":"Alles Klar, das schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 209"}}]
execute as @s[scores={elements_clementius_level=4,z_just-ignore=208}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=208}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=4,z_just-ignore=209}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Viel Spaß damit, ich überlege in der Zeit ob mir ein weiteres Feature für dich einfällt!"}]
execute as @s[scores={elements_clementius_level=4,z_just-ignore=209}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_enderchest_level_upgradeschmiede 1
execute as @s[scores={elements_clementius_level=4,z_just-ignore=209}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 5
execute as @s[scores={elements_clementius_level=4,z_just-ignore=209}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=209}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=5,elements_clementius_clicked=1}] if score .server elements_stage matches ..1 run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Tut mir Leid, bisher ist mir nichts für dich eingefallen! Komm doch später nochmal wieder!"}]
execute as @s[scores={elements_clementius_level=5,elements_clementius_clicked=1}] if score .server elements_stage matches ..1 run scoreboard players set @s elements_clementius_clicked 0


# Stage 2

execute as @s[scores={elements_clementius_level=5,elements_clementius_clicked=1}] if score .server elements_stage matches 2.. run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Da bist du ja wieder. Ich hab gute Neuigkeiten: Ich hab ein Neues Upgrade für deine Enderchest für dich!"},"\n","\n",{"text":"Ok Cool! Was ist es diesmal?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 210"}}]
execute as @s[scores={elements_clementius_level=5,elements_clementius_clicked=1}] if score .server elements_stage matches 2.. run scoreboard players set @s elements_clementius_clicked 0


execute as @s[scores={elements_clementius_level=5,z_just-ignore=210}] if score .server elements_stage matches 2.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Es ist etwas ganz besonderes: Dein eigener persönlicher Shop! Persönlich in dem Sinn, dass er auf deine Heimatdimension angepasst ist!"},"\n","\n",{"text":"Das klingt cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 211"}}]
execute as @s[scores={elements_clementius_level=5,z_just-ignore=210}] if score .server elements_stage matches 2.. at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=210}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=5,z_just-ignore=211}] if score .server elements_stage matches 2.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Das ist es allerings. Dafür benötige ich allerdings einen Eisenbarren, einen Kupferbarren und 2.000 Level von dir!"},"\n","\n",{"text":"Alles Klar!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 212"}}]
execute as @s[scores={elements_clementius_level=5,z_just-ignore=211}] if score .server elements_stage matches 2.. at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=211}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_clementius_level=5,z_just-ignore=212}] if score .server elements_stage matches 2.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Ich warte solange"}]
execute as @s[scores={elements_clementius_level=5,z_just-ignore=212}] if score .server elements_stage matches 2.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 6
execute as @s[scores={elements_clementius_level=5,z_just-ignore=212}] if score .server elements_stage matches 2.. at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=212}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_clementius_level=6,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Schon fertig? Ok, fangen wir mit dem Eisenbarren und Kupferbarren an!"},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 213"}}]
execute as @s[scores={elements_clementius_level=6,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=1..,elements_inv_copper_ingot=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Vielen Dank."}]
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=1..,elements_inv_copper_ingot=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s iron_ingot 1
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=1..,elements_inv_copper_ingot=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s copper_ingot 1
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=1..,elements_inv_copper_ingot=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 7
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=..0,elements_inv_copper_ingot=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast keinen Eisenbarren!"}]
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=1..,elements_inv_copper_ingot=..0}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast keinen Kupferbarren!"}]
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213,elements_inv_iron_ingot=..0,elements_inv_copper_ingot=..0}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast keinen Kupferbarren und keinen Eisenbarren!"}]
execute as @s[scores={elements_clementius_level=6,z_just-ignore=213}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=213}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=7,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Jetzt noch die 2.000 Level!."},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 214"}}]
execute as @s[scores={elements_clementius_level=7,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=7,z_just-ignore=214,elements_mainlevel=2000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Perfekt. Ich hab deiner Enderchest deinen Shop hinzugefügt!"},"\n","\n",{"text":"Ok, und wie genau funktioniert es?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 215"}}]
execute as @s[scores={elements_clementius_level=7,z_just-ignore=214,elements_mainlevel=2000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -2000 levels
execute as @s[scores={elements_clementius_level=7,z_just-ignore=214,elements_mainlevel=2000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 8
execute as @s[scores={elements_clementius_level=7,z_just-ignore=214,elements_mainlevel=..1999}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={elements_clementius_level=7,z_just-ignore=214}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=214}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=8,elements_clementius_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Du siehst alle Items die du kaufen kannst, mit Ihrem Preis, einfach einmal anklicken, und schon hast du das Item gekauft! "},{"text": "(Sollten Admins den Shop einer anderen Dimension für alle Freigeschaltet haben, siehst du erst ein Menü in dem Du den Shop auswählen kannst.)","color": "gray"},"\n","\n",{"text":"Alles Klar, das schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 216"}}]
execute as @s[scores={elements_clementius_level=8,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=8,z_just-ignore=215}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Du siehst alle Items die du kaufen kannst, mit Ihrem Preis, einfach einmal anklicken, und schon hast du das Item gekauft! "},{"text": "(Sollten Admins den Shop einer anderen Dimension für alle Freigeschaltet haben, siehst du erst ein Menü in dem Du den Shop auswählen kannst.)","color": "gray"},"\n","\n",{"text":"Alles Klar, das schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 216"}}]
execute as @s[scores={elements_clementius_level=8,z_just-ignore=215}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=215}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_clementius_level=8,z_just-ignore=216}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Mach das. Ich denke solange über weitere Upgrades nach."}]
execute as @s[scores={elements_clementius_level=8,z_just-ignore=216}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_enderchest_level_shop 1
execute as @s[scores={elements_clementius_level=8,z_just-ignore=216}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 9
execute as @s[scores={elements_clementius_level=8,z_just-ignore=216}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=216}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_clementius_level=9,elements_clementius_clicked=1}] if score .server elements_stage matches ..2 run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Tut mir Leid, bisher hab ich nichts Neues Für dich!"}]
execute as @s[scores={elements_clementius_level=9,elements_clementius_clicked=1}] if score .server elements_stage matches ..2 run scoreboard players set @s elements_clementius_clicked 0


# Stage 3

execute as @s[scores={elements_clementius_level=9,elements_clementius_clicked=1}] if score .server elements_stage matches 3.. run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Da bist du ja wieder. Ja, du hast Recht, ich hab wieder was neues für dich"},"\n","\n",{"text":"Und was ist es?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 217"}}]
execute as @s[scores={elements_clementius_level=9,elements_clementius_clicked=1}] if score .server elements_stage matches 3.. run scoreboard players set @s elements_clementius_clicked 0


execute as @s[scores={elements_clementius_level=9,z_just-ignore=217}] if score .server elements_stage matches 3.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Es ist etwas sehr nützliches, und zwar da du die Enderchest ja nicht normal verwenden kannst, wäre es doch cool wenn du dieses Feature wieder verwenden könntest oder?"},"\n","\n",{"text":"Da hast du Recht!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 218"}}]
execute as @s[scores={elements_clementius_level=9,z_just-ignore=217}] if score .server elements_stage matches 3.. at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=217}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=9,z_just-ignore=218}] if score .server elements_stage matches 3.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Die Enderchest in der Enderchest ist allerdings etwas teurer, und zwar brauche ich einen Smaragd, einen Diamant, ein Ancient Debris, ein Buch mit dem Infinity Enchantment und 1.000 Level!"},"\n","\n",{"text":"Oh, ja das ist teuer.. Ich halte mich mal ran","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 219"}}]
execute as @s[scores={elements_clementius_level=9,z_just-ignore=218}] if score .server elements_stage matches 3.. at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=218}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_clementius_level=9,z_just-ignore=219}] if score .server elements_stage matches 3.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":""},{"text":"Ich warte solange"}]
execute as @s[scores={elements_clementius_level=9,z_just-ignore=219}] if score .server elements_stage matches 3.. at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 10
execute as @s[scores={elements_clementius_level=9,z_just-ignore=219}] if score .server elements_stage matches 3.. at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=219}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_clementius_level=10,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Da bist du ja schon wieder! Ok, fangen wir mit dem Smaragd und dem Diamant an!"},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 220"}}]
execute as @s[scores={elements_clementius_level=10,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=1..,elements_inv_emerald=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Vielen Dank."}]
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=1..,elements_inv_emerald=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s diamond 1
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=1..,elements_inv_emerald=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s emerald 1
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=1..,elements_inv_emerald=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 11
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=..0,elements_inv_emerald=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast keinen Diamant!"}]
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=1..,elements_inv_emerald=..0}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast keinen Smaragd!"}]
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220,elements_inv_diamond=..0,elements_inv_emerald=..0}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast keinen Diamant und keinen Smaragd!"}]
execute as @s[scores={elements_clementius_level=10,z_just-ignore=220}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=220}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=11,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Dann als Nächstes das Ancient Debris und das Infinity Buch"},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 221"}}]
execute as @s[scores={elements_clementius_level=11,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=1..,elements_inv_infinity_book=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Vielen Dank."}]
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=1..,elements_inv_infinity_book=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s ancient_debris 1
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=1..,elements_inv_infinity_book=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s enchanted_book[stored_enchantments={infinity:1}] 1
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=1..,elements_inv_infinity_book=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 12
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=..0,elements_inv_infinity_book=1..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast kein Ancient Debris!"}]
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=1..,elements_inv_infinity_book=..0}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast kein Infinity Buch!"}]
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221,elements_inv_ancient_debris=..0,elements_inv_infinity_book=..0}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast kein Ancient Debris und kein Infinity Buch"}]
execute as @s[scores={elements_clementius_level=11,z_just-ignore=221}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=221}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_clementius_level=12,elements_clementius_clicked=1}] run tellraw @s ["",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Jetzt noch die 1.000 Level!."},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 222"}}]
execute as @s[scores={elements_clementius_level=12,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @s[scores={elements_clementius_level=12,z_just-ignore=222,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Perfekt. Ich hab deiner Enderchest das Feature hinzugefügt! Ich denke es ist selbsterklärend"}]
execute as @s[scores={elements_clementius_level=12,z_just-ignore=222,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -1000 levels
execute as @s[scores={elements_clementius_level=12,z_just-ignore=222,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_enderchest_level_enderchest 1
execute as @s[scores={elements_clementius_level=12,z_just-ignore=222,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 13
execute as @s[scores={elements_clementius_level=12,z_just-ignore=222,elements_mainlevel=..999}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Du hast nicht genügend Level!"}]
execute as @s[scores={elements_clementius_level=12,z_just-ignore=222}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=222}] run scoreboard players set @s z_just-ignore 0

# just ignore nr 223 geclaimt für handelsplatz
# just ignore nr 224 geclaimt für handelsplatz





execute as @s[scores={elements_clementius_level=13,elements_clementius_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.clementius.name.chat","color":"yellow"},{"text":"Tut mir Leid, aber ich habe keine Neuen Sachen für dich!"}]
execute as @s[scores={elements_clementius_level=13,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0

