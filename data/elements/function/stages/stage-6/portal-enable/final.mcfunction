kill @n[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}},distance=..0.5,nbt={OnGround:1b}]
kill @n[type=parrot,tag=portal_enable_stage-6_parrot]

particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 5000
tellraw @a [{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Papagei hat die Schokolade probiert und ist daran gestorben! Das Rätsel zum sechsten Boss wurde gelöst! Das Portal ist geöffnet!","color": "white"}]
title @a title [{"text": "Portal eröffnet!","color": "green"}]



execute in elements:hub run setblock -115 100 0 reinforced_deepslate
execute in elements:hub run summon interaction -114.5 100.00 0.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-6_portal"]}
execute in elements:hub run summon text_display -114.5 102.00 0.5 {billboard:"center",alignment:"center",Tags:["stage-6_portal_status"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},background:-15067626}
execute in elements:hub run summon text_display -114.5 101.70 0.5 {billboard:"center",alignment:"center",Tags:["stage-6_portal_status_subtitle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},background:-15067626}
execute in elements:hub run setblock -83 100 6 vault[facing=west,ominous=true]{config:{loot_table:"elements:items/boss_loot/stage_6",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:feather",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.stage_6.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":2,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:stage-6_boss-loot"}} replace
scoreboard players set .server elements_stage_6_portal_enable 1

