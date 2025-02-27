advancement revoke @s only elements:items/shop/ocean/bossfrucht/stage_2

execute as @s[scores={elements_custom-items_shop_boss-frucht_stage-2_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_boss-frucht_remain_stage-2 1
execute as @s[scores={elements_custom-items_shop_boss-frucht_stage-2_cooldown=0}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Boss-Frucht gegessen!","color": "white"},{"text": " (Stage 2) ","color": "gray"},{"text": "Jetzt Verbleibend: ","color": "green"},{"score": {"name": "@s","objective": "elements_custom-items_shop_boss-frucht_remain_stage-2"},"color": "green"}]
execute as @s[scores={elements_custom-items_shop_boss-frucht_stage-2_cooldown=0}] run clear @s golden_apple[custom_model_data=3] 1

scoreboard players set @s elements_custom-items_shop_boss-frucht_stage-2_cooldown 5