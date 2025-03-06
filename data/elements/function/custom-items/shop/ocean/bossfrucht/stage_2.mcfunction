advancement revoke @s only elements:items/shop/ocean/bossfrucht/stage_2

execute as @s[scores={elements_custom-items_shop_boss-frucht_cooldown=0}] if score #server elements_stage matches 2 if score @s elements_custom-items_shop_boss-frucht_current_stage matches 2 run scoreboard players add @s elements_custom-items_shop_boss-frucht_remain 1
execute as @s[scores={elements_custom-items_shop_boss-frucht_cooldown=0}] if score #server elements_stage matches 2 if score @s elements_custom-items_shop_boss-frucht_current_stage matches 2 run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Boss-Frucht gegessen! ","color": "white"},{"text": "Jetzt Verbleibend: ","color": "green"},{"score": {"name": "@s","objective": "elements_custom-items_shop_boss-frucht_remain"},"color": "green"}]
execute as @s[scores={elements_custom-items_shop_boss-frucht_cooldown=0}] if score #server elements_stage matches 2 if score @s elements_custom-items_shop_boss-frucht_current_stage matches 2 run clear @s golden_apple[custom_model_data=3] 1


execute as @s[scores={elements_custom-items_shop_boss-frucht_cooldown=0}] unless score #server elements_stage matches 2 unless score @s elements_custom-items_shop_boss-frucht_current_stage matches 2 run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Deine Bossfrucht war leider nicht mehr gültig, da sie aus Stage 2 stammt, dir wurden aber als ausgleich 300 Level recycelt","color": "red"}]
execute as @s[scores={elements_custom-items_shop_boss-frucht_cooldown=0}] unless score #server elements_stage matches 2 unless score @s elements_custom-items_shop_boss-frucht_current_stage matches 2 run xp add @s 300 levels
execute as @s[scores={elements_custom-items_shop_boss-frucht_cooldown=0}] unless score #server elements_stage matches 2 unless score @s elements_custom-items_shop_boss-frucht_current_stage matches 2 run clear @s golden_apple[custom_model_data=3] 1






scoreboard players set @s elements_custom-items_shop_boss-frucht_cooldown 2