advancement revoke @s only elements:mana-items/zentrierer

tellraw @s[scores={elements_custom-items_item-click_cooldown=0}] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Sorry, aber aus Zeitgründen muss die Funktion des Items erstmal noch warten :D","color": "red"}]

scoreboard players set @s elements_custom-items_item-click_cooldown 2