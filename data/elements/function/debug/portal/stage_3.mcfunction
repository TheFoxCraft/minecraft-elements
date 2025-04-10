execute if score .server elements_stage_3_portal_enable matches 1 run tellraw @s ["",{"text":"Das Portal für Stage 3 wurde wieder geschlossen!","color":"green"}]
execute if score .server elements_stage_3_portal_enable matches 1 in elements:hub run setblock 51 100 -41 air
execute if score .server elements_stage_3_portal_enable matches 1 in elements:hub run kill @e[type=interaction,tag=stage-3_portal]
execute if score .server elements_stage_1_portal_enable matches 1 in elements:hub run kill @e[type=text_display,tag=stage-3_portal_status]
execute if score .server elements_stage_1_portal_enable matches 1 in elements:hub run kill @e[type=text_display,tag=stage-3_portal_status_subtitle]
execute if score .server elements_stage_3_portal_enable matches 1 in elements:hub run setblock 57 100 -9 air


execute if score .server elements_stage_3_portal_enable matches 0 run tellraw @s ["",{"text":"Das Portal für Stage 3 wurde künstlich geöffnet!","color":"green"}]
execute if score .server elements_stage_3_portal_enable matches 0 in elements:hub run setblock 51 100 -41 reinforced_deepslate
execute if score .server elements_stage_3_portal_enable matches 0 in elements:hub run summon interaction 51.5 100.00 -40.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-3_portal"]}
execute if score .server elements_stage_3_portal_enable matches 0 in elements:hub run summon text_display 51.5 102.00 -40.5 {billboard:"center",alignment:"center",Tags:["stage-3_portal_status"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},background:-15067626}
execute if score .server elements_stage_3_portal_enable matches 0 in elements:hub run summon text_display 51.5 101.70 -40.5 {billboard:"center",alignment:"center",Tags:["stage-3_portal_status_subtitle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},background:-15067626}
execute if score .server elements_stage_3_portal_enable matches 0 in elements:hub run setblock 57 100 -9 vault[facing=north,ominous=true]{config:{loot_table:"elements:items/boss_loot/stage_3",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:crimson_hyphae",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.stage_3.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:stage-2_boss-loot"}} replace


execute if score .server elements_stage_3_portal_enable matches 0 run scoreboard players set .server elements_stage_3_portal_enable 2
execute if score .server elements_stage_3_portal_enable matches 1 run scoreboard players set .server elements_stage_3_portal_enable 0
execute if score .server elements_stage_3_portal_enable matches 2 run scoreboard players set .server elements_stage_3_portal_enable 1


