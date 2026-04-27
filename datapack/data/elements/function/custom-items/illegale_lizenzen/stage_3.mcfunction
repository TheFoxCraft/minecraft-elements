advancement revoke @s only elements:items/illegale_lizenzen/stage_3

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Zusätzliche Farmslots erhalten!","color": "white"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run scoreboard players add @s elements_farm-slots_stage-3_max-slots 5
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s paper[custom_model_data=3] 1

scoreboard players set @s elements_custom-items_item-click_cooldown 2