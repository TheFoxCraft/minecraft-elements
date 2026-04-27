particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 5000
tellraw @a [{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Gestank der Melone hat Ungeziefer Angelockt! Das Rätsel zum fünften Boss wurde gelöst! Das Portal ist geöffnet!","color": "white"}]
title @a title [{"text": "Portal eröffnet!","color": "green"}]



execute in elements:hub run setblock -51 100 41 reinforced_deepslate
execute in elements:hub run summon interaction -50.5 100.00 41.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-5_portal"]}
execute in elements:hub run summon text_display -50.5 102.00 41.5 {billboard:"center",alignment:"center",Tags:["stage-5_portal_status"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},background:-15067626}
execute in elements:hub run summon text_display -50.5 101.70 41.5 {billboard:"center",alignment:"center",Tags:["stage-5_portal_status_subtitle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},background:-15067626}
execute in elements:hub run setblock -45 100 9 vault[facing=south,ominous=true]{config:{loot_table:"elements:items/boss_loot/stage_5",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:copper_ingot",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.stage_5.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":30,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:stage-5_boss-loot"}} replace
scoreboard players set .server elements_stage_5_portal_enable 1

