execute unless score @s elements_homedimension = @s elements_dimension run return run scoreboard players remove @s elements_miningxp_farming_mine-get_sweet_berries 1
scoreboard players remove @s elements_miningxp_farming_mine-get_sweet_berries 1

scoreboard players add @s elements_miningxp_farming_xp 6
execute as @s[nbt={Inventory:[{id:"minecraft:dead_bush",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_miningxp_farming_xp 2
execute as @s[scores={elements_custom-items_shop_farming-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_farming-frucht_counter_sweet_berries 1
execute at @s store result score @s elements_miningxp_farming_loot run random value 1..20
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute at @s store result score @s elements_miningxp_farming_loot run random value 21..40
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute at @s store result score @s elements_miningxp_farming_loot run random value 41..60
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute at @s store result score @s elements_miningxp_farming_loot run random value 61..80
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute at @s store result score @s elements_miningxp_farming_loot run random value 81..100
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @n[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run loot spawn ~ ~ ~ loot elements:items/other/stage_4/sweet_berries
execute as @s[scores={elements_miningxp_farming_level=..99}] run title @s actionbar ["",{"text":"🔨 Farming: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_farming_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_farming_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @s[scores={elements_miningxp_farming_level=100}] run title @s actionbar ["",{"text":"🔨 Farming: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_farming_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20

execute if score .server elements_uniqueitem_dornenherz_der_wildnis matches 0 run function elements:uniques/trigger/dornenherz_der_wildnis/random

execute as @s[scores={elements_custom-items_shop_farming-frucht_counter_sweet_berries=3..}] run scoreboard players add @s elements_miningxp_farming_xp 6
execute as @s[scores={elements_custom-items_shop_farming-frucht_counter_sweet_berries=3..}] run scoreboard players remove @s elements_custom-items_shop_farming-frucht_counter_sweet_berries 3
