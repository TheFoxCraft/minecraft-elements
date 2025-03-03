advancement revoke @s only elements:mana-items/magische-schale



tellraw @s[scores={elements_mana_mana-count=100..,elements_mana_item_magische-schale_cooldown=0}] ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "100 Mana verbraucht."}]
effect give @s[scores={elements_mana_mana-count=100..,elements_mana_item_magische-schale_cooldown=0}] saturation 2 255 true
tellraw @s[scores={elements_mana_mana-count=..99,elements_mana_item_magische-schale_cooldown=0}] ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du hast keine 100 Mana.","color": "red"}]
scoreboard players remove @s[scores={elements_mana_mana-count=100..,elements_mana_item_magische-schale_cooldown=0}] elements_mana_mana-count 100

scoreboard players set @s elements_mana_item_magische-schale_cooldown 2