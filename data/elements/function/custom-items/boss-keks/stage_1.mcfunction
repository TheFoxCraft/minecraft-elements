advancement revoke @s only elements:items/customs/boss-keks/stage_1

execute as @s[scores={elements_custom-items_boss-keks_stage-1_cooldown=0}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Boss-Keks angewandt! ","color": "white"},{"text": "+50 Level","color": "green"}]
execute as @s[scores={elements_custom-items_boss-keks_stage-1_cooldown=0}] run xp add @s 50 levels
execute as @s[scores={elements_custom-items_boss-keks_stage-1_cooldown=0}] run clear @s cookie[custom_model_data=1] 1

scoreboard players set @s elements_custom-items_boss-keks_stage-1_cooldown 2