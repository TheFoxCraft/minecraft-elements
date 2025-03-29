execute as @e[type=minecraft:interaction,tag=schrotthaendler] at @s on target run tag @s add schrotthaendler
execute as @a[tag=schrotthaendler] run scoreboard players set @s elements_schrotthaendler_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=schrotthaendler,distance=..10] run data remove entity @s interaction
tag @a remove schrotthaendler

#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY
#700   ACHTUNG ALLE JUST_IGONRE SCORES SIND FALSCH, DA DIESE ANDERS VERWENDET WERDEN | LEGACY

execute as @a[scores={elements_schrotthaendler_clicked=1}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Guten Tag! Bei mir kannst du deine einige deiner Besonderen Items gegen Level verkaufen, wenn du diese nichtmehr brauchst. Andere können sie dann wieder mit Leveln und Tokens kaufen.  Wenn du etwas kaufen willst, klicke Unten. Wenn du etwas verkaufen willst, halte dein Item in der Hand und klicke Ebenfalls Unten."},"\n","\n",{"text":"Ich möchte etwas kaufen","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 700"}}," | ",{"text":" Ich möchte mein Item verkaufen","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 701"}}]
execute as @a[scores={elements_schrotthaendler_clicked=1}] run scoreboard players set @s elements_schrotthaendler_clicked 0


##selling your Items start

#gravity-stone rare
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tag @s add schrotthaendler_sell
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text": "Schrotthändler: ","color": "yellow"},{"text": "Oh, ein Gravity-Stone auf Seltenheit Rare! Für den biete ich dir"}, {"text": " 1.000 Level","color": "green"},{"text": " an. Möchtest du ihn verkaufen?"},"\n","\n",{"text":"Ja, Deal!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 702"},"hoverEvent": {"action": "show_text","contents": {"text": "Halte hierfür weiterhin dein Item in der Hand, sonst wird das falsche verkauft xD (Eine Protection dazu kommt evtl. noch)"}}}," | ",{"text":" Nein, das ist mir zu wenig","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 703"}}]
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Vielen Dank für deinen Verkauf! Ich habe dir die 1.000 Level gegeben."}]
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run xp add @s 1000 levels
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run scoreboard players add .server elements_schrotthaendler_item_gravity-stone_rare 1
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run item replace entity @s weapon.mainhand with air
#lebensfrucht
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:apple",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tag @s add schrotthaendler_sell
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:apple",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text": "Schrotthändler: ","color": "yellow"},{"text": "Oh, eine Lebensfrucht! Für die biete ich dir"}, {"text": " 1.000 Level","color": "green"},{"text": " an. Möchtest du sie verkaufen?"},"\n","\n",{"text":"Ja, Deal!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 702"},"hoverEvent": {"action": "show_text","contents": {"text": "Halte hierfür weiterhin dein Item in der Hand, sonst wird das falsche verkauft xD (Eine Protection dazu kommt evtl. noch)"}}}," | ",{"text":" Nein, das ist mir zu wenig","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 703"}}]
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:apple",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Vielen Dank für deinen Verkauf! Ich habe dir die 1.000 Level gegeben."}]
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:apple",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run xp add @s 1000 levels
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:apple",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run scoreboard players add .server elements_schrotthaendler_item_lebensfrucht 1
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:apple",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run item replace entity @s weapon.mainhand with air
#photon rare
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tag @s add schrotthaendler_sell
execute as @a[scores={just-ignore=701},nbt={SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text": "Schrotthändler: ","color": "yellow"},{"text": "Oh, ein Photon auf Seltenheit Rare! Für die biete ich dir"}, {"text": " 1.500 Level","color": "green"},{"text": " an. Möchtest du es verkaufen?"},"\n","\n",{"text":"Ja, Deal!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 702"},"hoverEvent": {"action": "show_text","contents": {"text": "Halte hierfür weiterhin dein Item in der Hand, sonst wird das falsche verkauft xD (Eine Protection dazu kommt evtl. noch)"}}}," | ",{"text":" Nein, das ist mir zu wenig","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 703"}}]
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Vielen Dank für deinen Verkauf! Ich habe dir die 1.500 Level gegeben."}]
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run xp add @s 1500 levels
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run scoreboard players add .server elements_schrotthaendler_item_photon_rare 1
execute as @a[scores={just-ignore=702},nbt={SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run item replace entity @s weapon.mainhand with air

# -add here-


#footer
execute as @a[scores={just-ignore=702}] run scoreboard players set @s just-ignore 0
execute as @a[scores={just-ignore=701},tag=!schrotthaendler_sell] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Sorry, aber dein Aktuelles Item kann ich nicht ankaufen! "},{"text": "(i)","color": "gray","italic": true,"hoverEvent": {"action": "show_text","value": "Developers Note: Der Schrotthändler kauft nur Bestimmte Items an, Uniques zum Beispiel sind erstmal nicht geplant. Wenn du ein Item hier unbedingt verkaufen willst, erstelle einen Vorschlag im Discord."}}]
execute as @a[scores={just-ignore=701},tag=!schrotthaendler_sell] at @s unless entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=701}] run scoreboard players set @s just-ignore 0
tag @a remove schrotthaendler_sell



# not fine with price
execute as @a[scores={just-ignore=703}] at @s if entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Das Tut mir Leid zu hören, Leider sind mir die Level, die ich geben kann vorgegeben. Wenn du sehr Unzufrieden mit den Leveln bist, erstelle doch einen Vorschlag im Discord, und wenn andere deine Meinung teilen, werden die Preise angepasst"}]
execute as @a[scores={just-ignore=703}] at @s unless entity @e[type=villager,tag=schrotthaendler,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=703}] run scoreboard players set @s just-ignore 0

## selling your Items end

## Buying Items start

execute as @a[scores={just-ignore=700}] run tellraw @s ["","\n",{"text": "Schrotthändler: ","color": "yellow"},{"text": "Oh, du möchtest etwas kaufen? Hier hast du eine Liste aller Items, die ich zum Verkauf habe:"}]

#gravity-stone rare
execute as @a[scores={just-ignore=700}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run tellraw @s ["",{"text":" - "},{"score": {"name": ".server","objective": "elements_schrotthaendler_item_gravity-stone_rare"},"color": "green"},{"text": "x Gravity-Stone (Rare) - 1.000 Level + 15 Common Tokens | "},{"text": " Kaufen","color": "gold","italic": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger just-ignore set 800"}}]
execute as @a[scores={just-ignore=700}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run tag @s add schrotthaendler_buy
execute as @a[scores={just-ignore=800,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Vielen Dank für deinen Kauf! Ich habe dir den Gravity-Stone gegeben!"}]
execute as @a[scores={just-ignore=800,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run loot give @s loot elements:items/customs/gravity-stone/rare
execute as @a[scores={just-ignore=800,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run clear @s minecraft:iron_ingot[custom_model_data=1] 15
execute as @a[scores={just-ignore=800,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run xp add @s -1000 levels
execute as @a[scores={just-ignore=800,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_gravity-stone_rare matches 1.. run scoreboard players remove .server elements_schrotthaendler_item_gravity-stone_rare 1
execute as @a[scores={just-ignore=800,elements_mainlevel=..999}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Du hast zu wenig Level!"}]
execute as @a[scores={just-ignore=800,elements_inv_token_common=..14}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Du hast zu wenig Common Tokens!"}]
execute as @a[scores={just-ignore=800}] run scoreboard players set @s just-ignore 0
#lebensfrucht
execute as @a[scores={just-ignore=700}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run tellraw @s ["",{"text":" - "},{"score": {"name": ".server","objective": "elements_schrotthaendler_item_lebensfrucht"},"color": "green"},{"text": "x Lebensfrucht - 1.000 Level + 15 Common Tokens | "},{"text": " Kaufen","color": "gold","italic": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger just-ignore set 801"}}]
execute as @a[scores={just-ignore=700}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run tag @s add schrotthaendler_buy
execute as @a[scores={just-ignore=801,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Vielen Dank für deinen Kauf! Ich habe dir die Lebensfrucht gegeben!"}]
execute as @a[scores={just-ignore=801,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run loot give @s loot elements:items/customs/gravity-stone/rare
execute as @a[scores={just-ignore=801,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run clear @s minecraft:iron_ingot[custom_model_data=1] 15
execute as @a[scores={just-ignore=801,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run xp add @s -1000 levels
execute as @a[scores={just-ignore=801,elements_mainlevel=1000..,elements_inv_token_common=15..}] if score .server elements_schrotthaendler_item_lebensfrucht matches 1.. run scoreboard players remove .server elements_schrotthaendler_item_lebensfrucht 1
execute as @a[scores={just-ignore=801,elements_mainlevel=..999}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Du hast zu wenig Level!"}]
execute as @a[scores={just-ignore=801,elements_inv_token_common=..14}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Du hast zu wenig Common Tokens!"}]
execute as @a[scores={just-ignore=801}] run scoreboard players set @s just-ignore 0
#photon rare
execute as @a[scores={just-ignore=700}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run tellraw @s ["",{"text":" - "},{"score": {"name": ".server","objective": "elements_schrotthaendler_item_photon_rare"},"color": "green"},{"text": "x Photon (Rare) - 1.500 Level + 15 Rare Tokens | "},{"text": " Kaufen","color": "gold","italic": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger just-ignore set 802"}}]
execute as @a[scores={just-ignore=700}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run tag @s add schrotthaendler_buy
execute as @a[scores={just-ignore=802,elements_mainlevel=1500..,elements_inv_token_rare=15..}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Vielen Dank für deinen Kauf! Ich habe dir das Photon gegeben!"}]
execute as @a[scores={just-ignore=802,elements_mainlevel=1500..,elements_inv_token_rare=15..}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run loot give @s loot elements:items/customs/gravity-stone/rare
execute as @a[scores={just-ignore=802,elements_mainlevel=1500..,elements_inv_token_rare=15..}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run clear @s minecraft:iron_ingot[custom_model_data=1] 15
execute as @a[scores={just-ignore=802,elements_mainlevel=1500..,elements_inv_token_rare=15..}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run xp add @s -1500 levels
execute as @a[scores={just-ignore=802,elements_mainlevel=1500..,elements_inv_token_rare=15..}] if score .server elements_schrotthaendler_item_photon_rare matches 1.. run scoreboard players remove .server elements_schrotthaendler_item_photon_rare 1
execute as @a[scores={just-ignore=802,elements_mainlevel=..1499}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Du hast zu wenig Level!"}]
execute as @a[scores={just-ignore=802,elements_inv_token_common=..14}] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Du hast zu wenig Common Tokens!"}]
execute as @a[scores={just-ignore=802}] run scoreboard players set @s just-ignore 0

# -add here-


#footer
execute as @a[scores={just-ignore=700},tag=!schrotthaendler_buy] run tellraw @s ["","\n",{"text":"Schrotthändler: ","color":"yellow"},{"text":"Es tut mir Leid, aber ich habe aktuell keine Items zum Verkauf. Komme später wieder."}]
execute as @a[scores={just-ignore=700}] run scoreboard players set @s just-ignore 0

tag @a remove schrotthaendler_buy

## Buying Items end