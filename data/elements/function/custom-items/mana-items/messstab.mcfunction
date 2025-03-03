advancement revoke @s only elements:mana-items/messstab



tellraw @s[scores={elements_mana_mana-count=20..,elements_mana_item_messstab_cooldown=0}] ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du hast zum Test 20 Mana verbraucht.","color": "gray"},"\n",{"text": "Deine Mana: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},"/",{"score": {"name": "@s","objective": "elements_mana_mana-max"}},", Deine Mana-Regeneration: ",{"score": {"name": "@s","objective": "elements_mana_regeneration-per-sec"}}," pro Sekunde"]
tellraw @s[scores={elements_mana_mana-count=..19,elements_mana_item_messstab_cooldown=0}] ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du hast keine 20 Mana zum Testen.","color": "gray"},"\n",{"text": "Deine Mana: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},"/",{"score": {"name": "@s","objective": "elements_mana_mana-max"}},", Deine Mana-Regeneration: ",{"score": {"name": "@s","objective": "elements_mana_regeneration-per-sec"}}," pro Sekunde"]
scoreboard players remove @s[scores={elements_mana_mana-count=20..,elements_mana_item_messstab_cooldown=0}] elements_mana_mana-count 20

scoreboard players set @s elements_mana_item_messstab_cooldown 2