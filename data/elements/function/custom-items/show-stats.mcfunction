execute as @s run scoreboard players set @s elements_enderchest_stats_addition 0
execute as @s[scores={elements_custom-items_shop_mining-frucht_enable=1}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_farming-frucht_enable=1}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_fishing-frucht_enable=1}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_leveltrank_enable=1}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_hastetrank_enable=1}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_boss-frucht_remain_stage-1=1..}] run scoreboard players set @s elements_enderchest_stats_addition 1
execute as @s[scores={elements_custom-items_shop_boss-frucht_remain_stage-2=1..}] run scoreboard players set @s elements_enderchest_stats_addition 1

execute as @s[scores={elements_enderchest_stats_addition=1}] run tellraw @s ["\n",{"text": "[","color": "white"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "white"},{"text": "Alle deine Aktuellen Boosts:"}]

execute as @s[scores={elements_custom-items_shop_mining-frucht_enable=1}] run tellraw @s ["",{"text":"Mining-XP: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_mining-frucht_timer_h"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_mining-frucht_timer_min"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_mining-frucht_timer_sec"}}]

execute as @s[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run tellraw @s ["",{"text":"Foraging-XP: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_foraging-frucht_timer_h"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_foraging-frucht_timer_min"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_foraging-frucht_timer_sec"}}]

execute as @s[scores={elements_custom-items_shop_farming-frucht_enable=1}] run tellraw @s ["",{"text":"Farming-XP: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_farming-frucht_timer_h"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_farming-frucht_timer_min"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_farming-frucht_timer_sec"}}]

execute as @s[scores={elements_custom-items_shop_fishing-frucht_enable=1}] run tellraw @s ["",{"text":"Fishing-XP: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_fishing-frucht_timer_h"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_fishing-frucht_timer_min"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_fishing-frucht_timer_sec"}}]

execute as @s[scores={elements_custom-items_shop_leveltrank_enable=1}] run tellraw @s ["",{"text":"Level-Boost: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_leveltrank_timer_h"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_leveltrank_timer_min"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_leveltrank_timer_sec"}}]

execute as @s[scores={elements_custom-items_shop_hastetrank_enable=1}] run tellraw @s ["",{"text":"Haste-Trank: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_hastetrank_timer_h"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_hastetrank_timer_min"}},":",{"score":{"name":"@s","objective":"elements_custom-items_shop_hastetrank_timer_sec"}}]

execute as @s[scores={elements_custom-items_shop_boss-frucht_remain_stage-1=1..}] run tellraw @s ["",{"text":"Boss-Frucht Stage 1: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_boss-frucht_remain_stage-1"}}]
execute as @s[scores={elements_custom-items_shop_boss-frucht_remain_stage-2=1..}] run tellraw @s ["",{"text":"Boss-Frucht Stage 2: ","color":"green"},{"score":{"name":"@s","objective":"elements_custom-items_shop_boss-frucht_remain_stage-2"}}]



