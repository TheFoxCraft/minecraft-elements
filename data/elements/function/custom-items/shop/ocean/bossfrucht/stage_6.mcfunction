advancement revoke @s only elements:items/shop/ocean/bossfrucht/stage_6

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 6 if score @s elements_custom-items_shop_boss-frucht_current_stage matches 6 run scoreboard players add @s elements_custom-items_shop_boss-frucht_remain 1
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 6 if score @s elements_custom-items_shop_boss-frucht_current_stage matches 6 run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Boss-Frucht gegessen! ","color": "white"},{"text": "Jetzt Verbleibend: ","color": "green"},{"score": {"name": "@s","objective": "elements_custom-items_shop_boss-frucht_remain"},"color": "green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] if score .server elements_stage matches 6 if score @s elements_custom-items_shop_boss-frucht_current_stage matches 6 run clear @s golden_apple[custom_model_data=7] 1


execute as @s[scores={elements_custom-items_item-click_cooldown=0}] unless score .server elements_stage matches 6 unless score @s elements_custom-items_shop_boss-frucht_current_stage matches 6 run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Deine Bossfrucht war leider nicht mehr gültig, da sie aus Stage 6 stammt, dir wurden aber als ausgleich 1.400 Level recycelt","color": "red"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] unless score .server elements_stage matches 6 unless score @s elements_custom-items_shop_boss-frucht_current_stage matches 6 run xp add @s 1400 levels
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] unless score .server elements_stage matches 6 unless score @s elements_custom-items_shop_boss-frucht_current_stage matches 6 run clear @s golden_apple[custom_model_data=7] 1






scoreboard players set @s elements_custom-items_item-click_cooldown 2