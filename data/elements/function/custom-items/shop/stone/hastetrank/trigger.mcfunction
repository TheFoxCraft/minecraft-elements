advancement revoke @s only elements:items/shop/stone/hastetrank


execute as @s[scores={elements_custom-items_shop_hastetrank_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_hastetrank_timer_min 60
execute as @s[scores={elements_custom-items_shop_hastetrank_cooldown=0}] run function elements:custom-items/shop/stone/hastetrank/timer
execute as @s[scores={elements_custom-items_shop_hastetrank_cooldown=0}] run tellraw @s ["",{"text": "[","color": "white"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "white"},"Haste-Trank eingesetzt! Jetzt verbleibende Zeit: ",{"score":{"name":"@s","objective":"elements_custom-items_shop_hastetrank_timer_h"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_hastetrank_timer_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_hastetrank_timer_sec"},"color":"green"}]
execute as @s[scores={elements_custom-items_shop_hastetrank_cooldown=0}] run clear @s potion[custom_model_data=7] 1

scoreboard players set @s elements_custom-items_shop_hastetrank_cooldown 5


