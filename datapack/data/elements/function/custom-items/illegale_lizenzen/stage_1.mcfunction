advancement revoke @s only elements:items/illegale_lizenzen/stage_1

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Stage 1 Besitzt keine Farmslots. Als Entschädigung: ","color": "white"},{"text": "+50 Level","color": "green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run xp add @s 50 levels
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s paper[custom_model_data=1] 1

scoreboard players set @s elements_custom-items_item-click_cooldown 2