scoreboard players add @s elements_miningxp_foresting_xp 3
execute as @s[nbt={Inventory:[{id:"minecraft:crafting_table",components:{"minecraft:custom_model_data":5}}]}] run scoreboard players add @s elements_miningxp_foresting_xp 1
execute as @s[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_counter 1
execute store result score @s elements_miningxp_foresting_loot run random value 1..20
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute store result score @s elements_miningxp_foresting_loot run random value 21..40
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute store result score @s elements_miningxp_foresting_loot run random value 41..60
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute store result score @s elements_miningxp_foresting_loot run random value 61..80
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute store result score @s elements_miningxp_foresting_loot run random value 81..100
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @s[scores={elements_miningxp_foresting_level=..99}] run title @s actionbar ["",{"text":"🪓 Foraging: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @s[scores={elements_miningxp_foresting_level=100}] run title @s actionbar ["",{"text":"🪓 Foraging: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20
scoreboard players remove @s elements_miningxp_foresting_mine-get_spruce 1


