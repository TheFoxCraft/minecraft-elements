advancement revoke @s only elements:items/shop/nether/big_heal_pot

execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s potion[custom_model_data=3] 1
execute as @s store result score @s elements_inv_big_heal_pot run clear @s minecraft:potion[custom_model_data=3] 0
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run effect give @s instant_health 1 2 false
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run title @s actionbar ["",{"text": "Geheilt! ","color":"green"},{"text": "Verbleibende Tränke: "},{"score": {"name": "@s","objective": "elements_inv_big_heal_pot"}}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20


scoreboard players set @s elements_custom-items_item-click_cooldown 2
