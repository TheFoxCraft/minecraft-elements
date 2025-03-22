advancement revoke @s only elements:items/illegale_lizenzen/stage_2

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Zusätzliche Farmslots erhalten!","color": "white"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run scoreboard players add @s elements_farm-slots_stage-2_max-slots 4
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s paper[custom_model_data=2] 1

scoreboard players set @s elements_custom-items_item-click_cooldown 2