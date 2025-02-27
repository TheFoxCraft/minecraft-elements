advancement revoke @s only elements:items/shop/ocean/water-breathing


execute as @s[scores={elements_custom-items_shop_water-breathing_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_min 60
execute as @s[scores={elements_custom-items_shop_water-breathing_cooldown=0}] run function elements:custom-items/shop/ocean/water-breathing/timer
execute as @s[scores={elements_custom-items_shop_water-breathing_cooldown=0}] run tellraw @s ["",{"text": "[","color": "white"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "white"},"Wasseratmungs-Trank eingesetzt! Jetzt verbleibende Zeit: ",{"score":{"name":"@s","objective":"elements_custom-items_shop_water-breathing_timer_h"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_water-breathing_timer_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_water-breathing_timer_sec"},"color":"green"}]
execute as @s[scores={elements_custom-items_shop_water-breathing_cooldown=0}] run clear @s potion[custom_model_data=9] 1

scoreboard players set @s elements_custom-items_shop_water-breathing_cooldown 5


