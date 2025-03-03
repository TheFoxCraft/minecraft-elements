advancement revoke @s only elements:items/shop/nether/small_heal_pot

execute as @s[scores={elements_custom-items_shop_small-heal-potion_cooldown=0}] run clear @s potion[custom_model_data=1] 1
execute as @s store result score @s elements_inv_small_heal_pot run clear @s minecraft:potion[custom_model_data=1] 0
execute as @s[scores={elements_custom-items_shop_small-heal-potion_cooldown=0}] run effect give @s instant_health 1 1 false
execute as @s[scores={elements_custom-items_shop_small-heal-potion_cooldown=0}] run title @s actionbar ["",{"text": "Geheilt! ","color":"green"},{"text": "Verbleibende Tränke: "},{"score": {"name": "@s","objective": "elements_inv_small_heal_pot"}}]


scoreboard players set @s elements_custom-items_shop_small-heal-potion_cooldown 2
