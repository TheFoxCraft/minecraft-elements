particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 5000
tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Aus dem Eisklotz kam ein merkwürdiges Wesen heraus. Das Rätsel zum Ersten Boss wurde gelöst! Das Portal ist geöffnet!","color": "white"}]
title @a title [{"text": "Portal eröffnet!","color": "green"}]
kill @s
setblock ~ ~ ~ air


execute in elements:hub run setblock -12 100 -15 reinforced_deepslate
execute in elements:hub run summon interaction -11.5 100.00 -14.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-1_portal"]}
execute in elements:hub run setblock 12 100 15 vault[facing=west,ominous=true]{config:{loot_table:"elements:items/boss_loot/stage_1",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:smooth_stone",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.stage_1.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}}} replace
scoreboard players set .server elements_stage_1_portal_enable 1

