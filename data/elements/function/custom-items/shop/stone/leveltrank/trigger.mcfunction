advancement revoke @s only elements:items/shop/stone/leveltrank


execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_leveltrank_timer_min 60
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run function elements:custom-items/shop/stone/leveltrank/timer
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},"Leveltrank eingesetzt! Jetzt verbleibende Zeit: ",{"score":{"name":"@s","objective":"elements_custom-items_shop_leveltrank_timer_h"},"color":"green"},{"translate":"elements.main.other.:","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_leveltrank_timer_min"},"color":"green"},{"translate":"elements.main.other.:","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_leveltrank_timer_sec"},"color":"green"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0}] run clear @s potion[custom_model_data=5] 1

scoreboard players set @s elements_custom-items_item-click_cooldown 2


