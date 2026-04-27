execute if score .server elements_stage_6_portal_enable matches 1 run tellraw @s ["",{"text":"Das Portal für Stage 6 wurde wieder geschlossen!","color":"green"}]
execute if score .server elements_stage_6_portal_enable matches 1 in elements:hub run setblock -115 100 0 air
execute if score .server elements_stage_6_portal_enable matches 1 in elements:hub run kill @e[type=interaction,tag=stage-6_portal]
execute if score .server elements_stage_1_portal_enable matches 1 in elements:hub run kill @e[type=text_display,tag=stage-6_portal_status]
execute if score .server elements_stage_1_portal_enable matches 1 in elements:hub run kill @e[type=text_display,tag=stage-6_portal_status_subtitle]
execute if score .server elements_stage_6_portal_enable matches 1 in elements:hub run setblock -83 100 6 air


execute if score .server elements_stage_6_portal_enable matches 0 run tellraw @s ["",{"text":"Das Portal für Stage 6 wurde künstlich geöffnet!","color":"green"}]
execute if score .server elements_stage_6_portal_enable matches 0 in elements:hub run setblock -115 100 0 reinforced_deepslate
execute if score .server elements_stage_6_portal_enable matches 0 in elements:hub run summon interaction -114.5 100.00 0.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-6_portal"]}
execute if score .server elements_stage_6_portal_enable matches 0 in elements:hub run summon text_display -114.5 102.00 0.5 {billboard:"center",alignment:"center",Tags:["stage-6_portal_status"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},background:-15067626}
execute if score .server elements_stage_6_portal_enable matches 0 in elements:hub run summon text_display -114.5 101.70 0.5 {billboard:"center",alignment:"center",Tags:["stage-6_portal_status_subtitle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},background:-15067626}
execute if score .server elements_stage_6_portal_enable matches 0 in elements:hub run setblock -83 100 6 vault[facing=west,ominous=true]{config:{loot_table:"elements:items/boss_loot/stage_6",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:feather",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.stage_6.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":2,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:stage-6_boss-loot"}} replace


execute if score .server elements_stage_6_portal_enable matches 0 run scoreboard players set .server elements_stage_6_portal_enable 2
execute if score .server elements_stage_6_portal_enable matches 1 run scoreboard players set .server elements_stage_6_portal_enable 0
execute if score .server elements_stage_6_portal_enable matches 2 run scoreboard players set .server elements_stage_6_portal_enable 1


