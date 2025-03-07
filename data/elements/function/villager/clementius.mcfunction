execute as @e[type=minecraft:interaction,tag=clementius] at @s on target run tag @s add clementius
execute as @a[tag=clementius] run scoreboard players set @s elements_clementius_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=clementius,distance=..4] run data remove entity @s interaction
tag @a remove clementius


#200

execute as @a[scores={elements_clementius_level=0,elements_clementius_clicked=1,elements_stats_eq=..59}] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Soso, ein Neuling! Ich habe eine Menge Mächtige Sachen zu bieten, aber einem NOOB wie dir verkaufe ich so etwas nicht! Komm wieder wenn du etwas mehr Erfahrung gesammelt hast!"},"\n","\n",{"text":"Was heißt das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 201"}}]
execute as @a[scores={elements_clementius_level=0,elements_clementius_clicked=1,elements_stats_eq=60..}] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Aha, das sieht doch schon besser aus, du hast dich also schon etwas eingelebt! Noob Status aufgehoben!"},"\n","\n",{"text":"Das ist gut!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 202"}}]
execute as @a[scores={elements_clementius_level=0,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0

execute as @a[scores={elements_clementius_level=0,just-ignore=201}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Spiele Erstmal ein wenig, entdecke die Welt und komme später wieder!"}]
execute as @a[scores={elements_clementius_level=0,just-ignore=201}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=201}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=0,just-ignore=202}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Ja, bei mir bekommst du jetzt eine Menge Coole Sachen, vor allem für deine Enderchest!"},"\n","\n",{"text":"Ok, cool! Hast du denn schon was für mich?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 203"}}]
execute as @a[scores={elements_clementius_level=0,just-ignore=202}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=202}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=0,just-ignore=203}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Wie du siehst, bin ich Schmied und kann deine Besonderen Items Verbessern, allerdings kann ich das nicht für alle Spieler tun, da würde ich ja nicht mehr fertig werden, deswegen kann ich dir deine Eigene Upgradschmiede verkaufen!"},"\n","\n",{"text":"Das klingt sehr interessant!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 204"}}]
execute as @a[scores={elements_clementius_level=0,just-ignore=203}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=203}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=0,just-ignore=204}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Das ist es in der Tat. Allerdings ist es auch nicht gerade Billig. Ich bräuchte 100 Komprimierten Bruchstein und 100 Level von dir."},"\n","\n",{"text":"Das ist eine Menge, aber ich melde mich wenn ich alles habe!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 205"}}]
execute as @a[scores={elements_clementius_level=0,just-ignore=204}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=204}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=0,just-ignore=205}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Lass dir ruhig Zeit. Ich warte hier auf dich"}]
execute as @a[scores={elements_clementius_level=0,just-ignore=205}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 1
execute as @a[scores={elements_clementius_level=0,just-ignore=205}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=205}] run scoreboard players set @s just-ignore 0


execute as @a[scores={elements_clementius_level=1,elements_clementius_clicked=1}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Da bist du ja wieder. Ok, alles dabei? Fangen wir mit den 100 Komprimierten Bruchstein an, hast du sie?"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 206"}}]
execute as @a[scores={elements_clementius_level=1,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @a[scores={elements_clementius_level=1,just-ignore=206,elements_inv_compressed_cobblestone=100..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Vielen Dank."}]
execute as @a[scores={elements_clementius_level=1,just-ignore=206,elements_inv_compressed_cobblestone=100..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run clear @s cobbled_deepslate[custom_model_data=1] 100
execute as @a[scores={elements_clementius_level=1,just-ignore=206,elements_inv_compressed_cobblestone=100..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 2
execute as @a[scores={elements_clementius_level=1,just-ignore=206,elements_inv_compressed_cobblestone=..99}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Komprimierten Bruchstein!"}]
execute as @a[scores={elements_clementius_level=1,just-ignore=206}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=206}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=2,elements_clementius_clicked=1}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Jetzt noch die 150 Level!."},"\n","\n",{"text":"Hier sind sie!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 207"}}]
execute as @a[scores={elements_clementius_level=2,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @a[scores={elements_clementius_level=2,just-ignore=207,elements_mainlevel=150..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Perfekt. Ich hab deiner Enderchest das Menü hinzugefügt!"},"\n","\n",{"text":"Ok, und wie Funktioniert es?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 208"}}]
execute as @a[scores={elements_clementius_level=2,just-ignore=207,elements_mainlevel=150..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run xp add @s -150 levels
execute as @a[scores={elements_clementius_level=2,just-ignore=207,elements_mainlevel=150..}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 3
execute as @a[scores={elements_clementius_level=2,just-ignore=207,elements_mainlevel=..149}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast nicht genügend Level!"}]
execute as @a[scores={elements_clementius_level=2,just-ignore=207}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=207}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=3,elements_clementius_clicked=1}] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Lege dein Item in den Linken Slot, wenn das Item gültig ist kannst du es für eine Bestimmte Zahl an Level Upgraden, diese sind Abhängig von der Seltenheit des Items. Wenn du genügend Level hast und auf Upgrad klickst, wird das neue Item im Rechten Slot synthetisiert. Das Alte Item wird dabei Vollständig zerstört, die Enchantments übertragen sich nicht."},"\n","\n",{"text":"Alles Klar, das schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 209"}}]
execute as @a[scores={elements_clementius_level=3,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @a[scores={elements_clementius_level=3,just-ignore=208}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Lege dein Item in den Linken Slot, wenn das Item gültig ist kannst du es für eine Bestimmte Zahl an Level Upgraden, diese sind Abhängig von der Seltenheit des Items. Wenn du genügend Level hast und auf Upgrad klickst, wird das neue Item im Rechten Slot synthetisiert. Das Alte Item wird dabei Vollständig zerstört, die Enchantments übertragen sich nicht."},"\n","\n",{"text":"Alles Klar, das schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 209"}}]
execute as @a[scores={elements_clementius_level=3,just-ignore=208}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=208}] run scoreboard players set @s just-ignore 0


execute as @a[scores={elements_clementius_level=3,just-ignore=209}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":""},{"text":"Viel Spaß damit, ich überlege in der Zeit ob mir ein weiteres Feature für dich einfällt!"}]
execute as @a[scores={elements_clementius_level=3,just-ignore=209}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_enderchest_level_upgradeschmiede 1
execute as @a[scores={elements_clementius_level=3,just-ignore=209}] at @s if entity @e[type=villager,tag=clementius,distance=..10] run scoreboard players set @s elements_clementius_level 4
execute as @a[scores={elements_clementius_level=3,just-ignore=209}] at @s unless entity @e[type=villager,tag=clementius,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=209}] run scoreboard players set @s just-ignore 0


execute as @a[scores={elements_clementius_level=4,elements_clementius_clicked=1}] if score #server elements_stage matches ..1 run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Tut mir Leid, bisher ist mir nichts für dich eingefallen! Komm doch später nochmal wieder!"}]
execute as @a[scores={elements_clementius_level=4,elements_clementius_clicked=1}] if score #server elements_stage matches ..1 run scoreboard players set @s elements_clementius_clicked 0

execute as @a[scores={elements_clementius_level=4,elements_clementius_clicked=1}] if score #server elements_stage matches 2.. run tellraw @s ["","\n",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Mehr noch nicht gecodet!"}]
execute as @a[scores={elements_clementius_level=4,elements_clementius_clicked=1}] if score #server elements_stage matches 2.. run scoreboard players set @s elements_clementius_clicked 0
