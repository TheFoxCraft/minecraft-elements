advancement revoke @s only elements:items/customs/boss-keks/stage_1

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Boss-Keks angewandt! ","color": "white"},{"text": "+50 Level","color": "green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run xp add @s 50 levels
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s cookie[custom_model_data=1] 1

scoreboard players set @s elements_custom-items_item-click_cooldown 2