advancement revoke @s only elements:items/shop/ocean/bossfrucht/stage_1

execute as @s[scores={elements_custom-items_shop_boss-frucht_stage-1_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_boss-frucht_remain_stage-1 1
execute as @s[scores={elements_custom-items_shop_boss-frucht_stage-1_cooldown=0}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Boss-Frucht gegessen!","color": "white"},{"text": " (Stage 1) ","color": "gray"},{"text": "Jetzt Verbleibend: ","color": "green"},{"score": {"name": "@s","objective": "elements_custom-items_shop_boss-frucht_remain_stage-1"},"color": "green"}]
execute as @s[scores={elements_custom-items_shop_boss-frucht_stage-1_cooldown=0}] run clear @s golden_apple[custom_model_data=1] 1

scoreboard players set @s elements_custom-items_shop_boss-frucht_stage-1_cooldown 5