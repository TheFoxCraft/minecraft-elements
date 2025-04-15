execute unless score @s elements_homedimension = @s elements_dimension run return run scoreboard players remove @s elements_miningxp_mining_mine-get_stone 1
scoreboard players remove @s elements_miningxp_mining_mine-get_stone 1

scoreboard players add @s elements_miningxp_mining_xp 1
execute as @s[nbt={Inventory:[{id:"minecraft:fire_charge",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players add @s elements_miningxp_mining_xp 1
execute as @s[scores={elements_custom-items_shop_mining-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_mining-frucht_counter 1
execute store result score @s elements_miningxp_mining_loot run random value 1..20
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute store result score @s elements_miningxp_mining_loot run random value 21..40
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute store result score @s elements_miningxp_mining_loot run random value 41..60
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute store result score @s elements_miningxp_mining_loot run random value 61..80
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute store result score @s elements_miningxp_mining_loot run random value 81..100
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute at @s if score @s elements_miningxp_mining_level >= @s elements_miningxp_mining_loot at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @s[scores={elements_miningxp_mining_level=..99}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @s[scores={elements_miningxp_mining_level=100}] run title @s actionbar ["",{"text":"⛏ Mining: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_mining_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20




