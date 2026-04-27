advancement revoke @s only elements:items/customs/boss-keks/final-boss

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Boss-Keks angewandt! ","color": "white"},{"text": "+30.000 Level","color": "green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run xp add @s 30000 levels
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s cookie[custom_model_data=7] 1

scoreboard players set @s elements_custom-items_item-click_cooldown 2
