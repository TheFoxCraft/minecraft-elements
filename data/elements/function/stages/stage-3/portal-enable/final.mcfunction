particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 5000
tellraw @a [{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Hoglin wurde getötet! Nun ist er sehr verärgert! Das Rätsel zum dritten Boss wurde gelöst! Das Portal ist geöffnet!","color": "white"}]
title @a title [{"text": "Portal eröffnet!","color": "green"}]



execute in elements:hub run setblock 51 100 -41 reinforced_deepslate
execute in elements:hub run summon interaction 51.5 100.00 -40.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-3_portal"]}
execute in elements:hub run setblock 57 100 -9 vault[facing=north,ominous=true]{config:{loot_table:"elements:items/boss_loot/stage_3",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:crimson_hyphae",components:{"minecraft:item_name":'{"color":"blue","bold": true,"translate": "elements.item.boss_key.stage_3.name"}',"minecraft:lore":['{"translate": "elements.main.other.space"}','{"color":"gray","italic":false,"translate": "elements.item.boss_key.description"}','{"translate": "elements.main.other.space"}','{"bold":true,"color":"blue","italic":false,"translate": "elements.main.rarities.rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:stage-2_boss-loot"}} replace
scoreboard players set .server elements_stage_3_portal_enable 1

