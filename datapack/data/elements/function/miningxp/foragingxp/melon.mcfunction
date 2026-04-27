execute unless items entity @s weapon.mainhand #hoes run return run scoreboard players remove @s elements_miningxp_foresting_mine-get_melon 1
execute unless score @s elements_homedimension = @s elements_dimension run return run scoreboard players remove @s elements_miningxp_foresting_mine-get_melon 1
scoreboard players remove @s elements_miningxp_foresting_mine-get_melon 1

scoreboard players add @s elements_miningxp_foresting_xp 6
execute as @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players add @s elements_miningxp_foresting_xp 2
execute as @s[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_counter 1
execute store result score @s elements_miningxp_foresting_loot run random value 1..20
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:1,"components":{"attribute_modifiers": {"show_in_tooltip": false,"modifiers": [{"amount": -1,"id": "stage_5_melon","operation": "add_multiplied_base","type": "block_interaction_range","slot": "any"}]}}}}
execute store result score @s elements_miningxp_foresting_loot run random value 21..40
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:1,"components":{"attribute_modifiers": {"show_in_tooltip": false,"modifiers": [{"amount": -1,"id": "stage_5_melon","operation": "add_multiplied_base","type": "block_interaction_range","slot": "any"}]}}}}
execute store result score @s elements_miningxp_foresting_loot run random value 41..60
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:1,"components":{"attribute_modifiers": {"show_in_tooltip": false,"modifiers": [{"amount": -1,"id": "stage_5_melon","operation": "add_multiplied_base","type": "block_interaction_range","slot": "any"}]}}}}
execute store result score @s elements_miningxp_foresting_loot run random value 61..80
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:1,"components":{"attribute_modifiers": {"show_in_tooltip": false,"modifiers": [{"amount": -1,"id": "stage_5_melon","operation": "add_multiplied_base","type": "block_interaction_range","slot": "any"}]}}}}
execute store result score @s elements_miningxp_foresting_loot run random value 81..100
execute at @s if score @s elements_miningxp_foresting_level >= @s elements_miningxp_foresting_loot at @n[type=item,nbt={Item:{id:"minecraft:melon",count:1}}] run summon item ~ ~ ~ {Item:{id:"minecraft:melon",count:1,"components":{"attribute_modifiers": {"show_in_tooltip": false,"modifiers": [{"amount": -1,"id": "stage_5_melon","operation": "add_multiplied_base","type": "block_interaction_range","slot": "any"}]}}}}
execute as @s[scores={elements_miningxp_foresting_level=..99}] run title @s actionbar ["",{"text":"🪓 Foraging: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
execute as @s[scores={elements_miningxp_foresting_level=100}] run title @s actionbar ["",{"text":"🪓 Foraging: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_foresting_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
scoreboard players set @s elements_sonstiges_actionbar_pause 20


execute as @s[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players add @s elements_miningxp_foresting_xp 6
execute as @s[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_counter 3

