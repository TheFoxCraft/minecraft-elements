advancement revoke @s only elements:fishing-frucht
execute as @a[scores={elements_custom-items_shop_fishing-frucht_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_fishing-frucht_timer_min 30
execute as @a[scores={elements_custom-items_shop_fishing-frucht_cooldown=0}] run function elements:custom-items/fishing-frucht/timer
execute as @a[scores={elements_custom-items_shop_fishing-frucht_cooldown=0}] run tellraw @s ["",{"text":"Server: ","color":"yellow"},"Fishingfrucht eingesetzt! Jetzt verbleibende Zeit: ",{"score":{"name":"@s","objective":"elements_custom-items_shop_fishing-frucht_timer_h"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_fishing-frucht_timer_min"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_fishing-frucht_timer_sec"},"color":"green"}]
execute as @a[scores={elements_custom-items_shop_fishing-frucht_cooldown=0}] run clear @s pumpkin_pie[custom_model_data=1] 1
execute as @a[scores={elements_custom-items_shop_fishing-frucht_cooldown=0}] run scoreboard players set @s elements_custom-items_shop_fishing-frucht_cooldown 20



