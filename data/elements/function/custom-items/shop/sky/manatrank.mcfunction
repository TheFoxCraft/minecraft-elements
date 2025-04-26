advancement revoke @s only elements:items/shop/sky/manatrank

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score @s elements_mana_mana-count < @s elements_mana_mana-max run clear @s potion[custom_model_data=11] 1
execute as @s store result score @s elements_inv_manatrank run clear @s minecraft:potion[custom_model_data=11] 0
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score @s elements_mana_mana-count < @s elements_mana_mana-max run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Mana Aufgefüllt! ","color":"green"},{"text": "Verbleibende Tränke: "},{"score": {"name": "@s","objective": "elements_inv_manatrank"}}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score @s elements_mana_mana-count = @s elements_mana_mana-max run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast bereits Volle Mana. Es wurde kein Trank verbraucht","color":"#ff8800"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score @s elements_mana_mana-count < @s elements_mana_mana-max run scoreboard players add @s elements_mana_mana-count 100

scoreboard players set @s elements_custom-items_item-click_cooldown 2
