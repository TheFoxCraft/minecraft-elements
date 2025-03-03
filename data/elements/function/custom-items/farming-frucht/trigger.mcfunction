advancement revoke @s only elements:farming-frucht
execute as @s[scores={elements_custom-items_shop_farming-frucht_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_farming-frucht_timer_min 30
execute as @s[scores={elements_custom-items_shop_farming-frucht_cooldown=0}] run function elements:custom-items/farming-frucht/timer
execute as @s[scores={elements_custom-items_shop_farming-frucht_cooldown=0}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},"Farmingfrucht eingesetzt! Jetzt verbleibende Zeit: ",{"score":{"name":"@s","objective":"elements_custom-items_shop_farming-frucht_timer_h"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_farming-frucht_timer_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_farming-frucht_timer_sec"},"color":"green"}]
execute as @s[scores={elements_custom-items_shop_farming-frucht_cooldown=0}] run clear @s glow_berries[custom_model_data=1] 1
execute as @s[scores={elements_custom-items_shop_farming-frucht_cooldown=0}] run scoreboard players set @s elements_custom-items_shop_farming-frucht_cooldown 20



