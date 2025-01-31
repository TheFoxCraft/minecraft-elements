particle minecraft:smoke ~ ~ ~ 1 1 1 0.01 5000
tellraw @a [{"text": "Server: ","color": "yellow"},{"text": "Das Rätsel zum Ersten Boss wurde gelöst! Aus dem Eisklotz kam ein merkwürdiges Wesen heraus. Das Portal ist geöffnet!","color": "white"}]
scoreboard players set #server elements_stage_1_portal_enable 1
kill @s
setblock ~ ~ ~ air
setblock -12 100 -15 reinforced_deepslate
summon interaction -11.5 100.00 -14.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-1_portal"]}
setblock 12 100 15 vault[facing=west,ominous=true]{config:{loot_table:"elements:stage-1_boss-loot",override_loot_table_to_display:"minecraft:empty",key_item:{id:"minecraft:smooth_stone",components:{"minecraft:item_name":'{"color":"yellow","text":"Stone-Boss Schlüssel"}',"minecraft:lore":['" "','{"color":"gray","italic":false,"text":"Öffnet den Vault im HUB für deinen Loot"}','" "','{"bold":true,"color":"blue","italic":false,"text":"Rare"}'],"minecraft:fire_resistant":{},"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true}}},shared_data:{loot_table:"elements:stage-1_boss-loot"}} replace



