advancement revoke @s only elements:foraging-frucht
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_min 30
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run function elements:custom-items/foraging-frucht/timer
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Foragingfrucht eingesetzt! Jetzt verbleibende Zeit: ",{"score":{"name":"@s","objective":"elements_custom-items_shop_foraging-frucht_timer_h"},"color":"green"},{"translate":"elements.main.other.:","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_foraging-frucht_timer_min"},"color":"green"},{"translate":"elements.main.other.:","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_foraging-frucht_timer_sec"},"color":"green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s carrot[custom_model_data=1] 1
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run scoreboard players set @s elements_custom-items_item-click_cooldown 20



