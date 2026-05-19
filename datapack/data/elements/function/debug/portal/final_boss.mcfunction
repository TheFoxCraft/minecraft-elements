execute if score .server elements_final-boss_portal_enable matches 1 run tellraw @s ["",{"text":"Das Portal zum Finalen Boss wurde geschlossen!","color":"green"}]
execute if score .server elements_final-boss_portal_enable matches 1 in elements:hub run kill @e[type=interaction,tag=final-boss_portal]
execute if score .server elements_final-boss_portal_enable matches 1 in elements:hub run kill @e[type=text_display,tag=final-boss_portal_status]
execute if score .server elements_final-boss_portal_enable matches 1 in elements:hub run kill @e[type=text_display,tag=final-boss_portal_status_subtitle]
execute if score .server elements_final-boss_portal_enable matches 1 in elements:hub run setblock -18 49 67 air
execute if score .server elements_final-boss_portal_enable matches 1 in elements:hub run setblock 18 49 67 air
execute if score .server elements_final-boss_portal_enable matches 1 in elements:hub run setblock 0 53 60 air


execute if score .server elements_final-boss_portal_enable matches 0 run tellraw @s ["",{"text":"Das Portal zum Finalen Boss wurde künstlich geöffnet!","color":"green"}]
execute if score .server elements_final-boss_portal_enable matches 0 in elements:hub run summon interaction 0.5 53.00 60.5 {width:1.01f,height:1.01f,response:1b,Tags:["final-boss_portal"]}
execute if score .server elements_final-boss_portal_enable matches 0 in elements:hub run summon text_display 0.5 53.00 60.5 {billboard:"center",alignment:"center",Tags:["final-boss_portal_status"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},background:-15067626}
execute if score .server elements_final-boss_portal_enable matches 0 in elements:hub run summon text_display 0.5 53.00 60.5 {billboard:"center",alignment:"center",Tags:["final-boss_portal_status_subtitle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},background:-15067626}
execute if score .server elements_final-boss_portal_enable matches 0 in elements:hub run setblock -18 49 67 vault[facing=south,ominous=true]{config:{loot_table:"elements:items/boss_loot/final-boss",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:ominous_trial_key",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.final-boss.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:final-boss_boss-loot"}} replace
execute if score .server elements_final-boss_portal_enable matches 0 in elements:hub run setblock 18 49 67 vault[facing=south,ominous=true]{config:{loot_table:"elements:items/boss_loot/final-boss",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:ominous_trial_key",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.final-boss.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:final-boss_boss-loot"}} replace
execute if score .server elements_final-boss_portal_enable matches 0 in elements:hub run setblock 0 53 60 beacon


execute if score .server elements_final-boss_portal_enable matches 0 run scoreboard players set .server elements_final-boss_portal_enable 2
execute if score .server elements_final-boss_portal_enable matches 1 run scoreboard players set .server elements_final-boss_portal_enable 0
execute if score .server elements_final-boss_portal_enable matches 2 run scoreboard players set .server elements_final-boss_portal_enable 1


