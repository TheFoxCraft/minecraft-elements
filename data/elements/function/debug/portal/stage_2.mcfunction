execute if score #server elements_stage_2_portal_enable matches 1 run tellraw @s ["",{"text":"Das Portal für Stage 2 wurde wieder geschlossen!","color":"green"}]
execute if score #server elements_stage_2_portal_enable matches 1 in elements:hub run setblock -12 100 -15 quartz_slab[type=top]
execute if score #server elements_stage_2_portal_enable matches 1 in elements:hub run kill @e[type=interaction,tag=stage-1_portal]
execute if score #server elements_stage_2_portal_enable matches 1 in elements:hub run setblock 12 100 15 quartz_slab[type=top]


execute if score #server elements_stage_1_portal_enable matches 0 run tellraw @s ["",{"text":"Das Portal für Stage 1 wurde künstlich geöffnet!","color":"green"}]
execute if score #server elements_stage_1_portal_enable matches 0 in elements:hub run setblock -12 100 -15 reinforced_deepslate
execute if score #server elements_stage_1_portal_enable matches 0 in elements:hub run summon interaction -11.5 100.00 -14.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-1_portal"]}
execute if score #server elements_stage_1_portal_enable matches 0 in elements:hub run setblock 12 100 15 vault[facing=west,ominous=true]{config:{loot_table:"elements:stage-1_boss-loot",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:smooth_stone",components:{"minecraft:item_name":'{"color":"yellow","text":"Stone-Boss Schlüssel"}',"minecraft:lore":['" "','{"color":"gray","italic":false,"text":"Öffnet den Vault im HUB für deinen Loot"}','" "','{"bold":true,"color":"blue","italic":false,"text":"Rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,"minecraft:damage_resistant":{types:"#minecraft:is_fire"}}}}} replace

execute if score #server elements_stage_1_portal_enable matches 0 run scoreboard players set #server elements_stage_1_portal_enable 2
execute if score #server elements_stage_1_portal_enable matches 1 run scoreboard players set #server elements_stage_1_portal_enable 0
execute if score #server elements_stage_1_portal_enable matches 2 run scoreboard players set #server elements_stage_1_portal_enable 1