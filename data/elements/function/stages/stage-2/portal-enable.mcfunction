particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 5000
tellraw @a [{"translate":"elements.main.other.server","color": "yellow"},{"text": "Die Stufen des Lebens wurden fusioniert! Das Rätsel zum zweiten Boss wurde gelöst! Das Portal ist geöffnet!","color": "white"}]
title @a title [{"text": "Portal eröffnet!","color": "green"}]
kill @s
kill @n[type=item,nbt={Item:{id:"minecraft:spruce_log"}}]
kill @n[type=item,nbt={Item:{id:"minecraft:charcoal"}}]


execute in elements:hub run setblock 51 100 41 reinforced_deepslate
execute in elements:hub run summon interaction 51.5 100.00 41.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-2_portal"]}
execute in elements:hub run setblock 57 100 9 vault[facing=south,ominous=true]{config:{loot_table:"elements:stage-2_boss-loot",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:stripped_bamboo_block",components:{"minecraft:item_name":'{"color":"yellow","text":"Holz-Boss Schlüssel"}',"minecraft:lore":['" "','{"color":"gray","italic":false,"text":"Öffnet den Vault im HUB für deinen Loot"}','" "','{"bold":true,"color":"blue","italic":false,"text":"Rare"}'],"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true,damage_resistant:{types:"#is_fire"}}}},shared_data:{loot_table:"elements:stage-2_boss-loot"}} replace
scoreboard players set .server elements_stage_2_portal_enable 1

