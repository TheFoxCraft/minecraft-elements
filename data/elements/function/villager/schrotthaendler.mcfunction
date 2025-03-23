execute as @e[type=minecraft:interaction,tag=schrotthaendler] at @s on target run tag @s add schrotthaendler
execute as @a[tag=schrotthaendler] run scoreboard players set @s elements_schrotthaendler_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=schrotthaendler,distance=..10] run data remove entity @s interaction
tag @a remove schrotthaendler

#700

execute as @a[scores={elements_schrotthaendler_clicked=1}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Guten Tag! Bei mir kannst du deine einige deiner Besonderen Items gegen Level verkaufen, wenn du diese nichtmehr brauchst. Andere können sie dann wieder mit Leveln und Tokens kaufen.  Wenn du etwas kaufen willst, klicke Unten. Wenn du etwas verkaufen willst, halte dein Item in der Hand und klicke Ebenfalls Unten."},"\n","\n",{"text":"Ich möchte etwas kaufen","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 700"}}," | ",{"text":" Ich möchte mein Item verkaufen","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 701"}}]
execute as @a[scores={elements_schrotthaendler_clicked=1}] run scoreboard players set @s elements_schrotthaendler_clicked 0


#selling your Items

#gravity-stone
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tag @s add schrotthaendler_sell
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["",{"text": "Schrotthändler: ","color": "yellow"},{"text": "Oh, der Gravity-Stone auf Seltenheit Rare! Für den biete ich dir"}, {"text": " 1.000 Level","color": "green"},{"text": " an. Möchtest du ihn verkaufen?"},"\n","\n",{"text":"Ja, Deal!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 702"},"hoverEvent": {"action": "show_text","contents": {"text": "Halte hierfür weiterhin dein Item in der Hand, sonst wird das falsche verkauft xD (Eine Protection dazu kommt evtl. noch)"}}}," | ",{"text":" Nein, das ist mir zu wenig","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 703"}}]




execute as @a[scores={just-ignore=701},tag=!schrotthaendler_sell] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Sorry, aber dein Aktuelles Item kann ich nicht ankaufen! "},{"text": "(i)","color": "gray","italic": true,"hoverEvent": {"action": "show_text","value": "Developers Note: Der Schrotthändler kauft nur Bestimmte Items an, Uniques zum Beispiel sind erstmal nicht geplant. Wenn du ein Item hier unbedingt verkaufen willst, erstelle einen Vorschlag im Discord."}}]
execute as @a[scores={just-ignore=701},tag=!schrotthaendler_sell] at @s unless entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=701}] run scoreboard players set @s just-ignore 0
tag @a remove schrotthaendler_sell




# not fine with price
execute as @a[scores={just-ignore=703}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Das Tut mir Leid zu hören, Leider sind mir die Level, die ich geben kann vorgegeben. Wenn du sehr Unzufrieden mit den Leveln bist, erstelle doch einen Vorschlag im Discord, und wenn andere deine Meinung teilen, werden die Preise angepasst"}]
execute as @a[scores={just-ignore=703}] at @s unless entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=703}] run scoreboard players set @s just-ignore 0


