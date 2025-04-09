scoreboard players add @s elements_miningxp_farming_xp 2
execute as @s[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_counter 1
execute at @s store result score @s elements_miningxp_farming_loot run random value 1..20
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute at @s store result score @s elements_miningxp_farming_loot run random value 21..40
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute at @s store result score @s elements_miningxp_farming_loot run random value 41..60
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute at @s store result score @s elements_miningxp_farming_loot run random value 61..80
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute at @s store result score @s elements_miningxp_farming_loot run random value 81..100
execute at @s if score @s elements_miningxp_farming_level >= @s elements_miningxp_farming_loot at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @s[scores={elements_miningxp_farming_level=..99}] run title @s actionbar ["",{"text":"🔨 Farming: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_farming_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_farming_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @s[scores={elements_miningxp_farming_level=100}] run title @s actionbar ["",{"text":"🔨 Farming: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_farming_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20
scoreboard players remove @s elements_miningxp_farming_mine-get_crimson_vines 1
