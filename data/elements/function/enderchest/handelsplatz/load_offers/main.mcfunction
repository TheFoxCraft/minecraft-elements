
#build item
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["handelsmarkt_offers_load"],Invulnerable:1b,Silent:1b}

data modify entity @n[type=armor_stand,tag=handelsmarkt_offers_load] HandItems[0] set from storage elements_handelsmarkt_offers Load_Offers[0].Item


summon text_display ~ ~ ~ {Tags:["handelsmarkt_offers_load_data"],text:'[{"text":" ","color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmarkt_offers_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmarkt_offers_load_data,limit=1] text
kill @e[type=text_display,tag=handelsmarkt_offers_load_data]
summon text_display ~ ~ ~ {Tags:["handelsmarkt_offers_load_data"],text:'[{"text":"<------------------------------->","color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmarkt_offers_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmarkt_offers_load_data,limit=1] text
kill @e[type=text_display,tag=handelsmarkt_offers_load_data]
function elements:enderchest/handelsplatz/load_offers/set_price with storage elements_handelsmarkt_offers Load_Offers[0]
data modify entity @e[tag=handelsmarkt_offers_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmarkt_offers_load_data,limit=1] text
kill @e[type=text_display,tag=handelsmarkt_offers_load_data]
function elements:enderchest/handelsplatz/load_offers/set_name with storage elements_handelsmarkt_offers Load_Offers[0]
data modify entity @e[tag=handelsmarkt_offers_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmarkt_offers_load_data,limit=1] text
kill @e[type=text_display,tag=handelsmarkt_offers_load_data]
summon text_display ~ ~ ~ {Tags:["handelsmarkt_offers_load_data"],text:'[{"text":"<------------------------------->","color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmarkt_offers_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmarkt_offers_load_data,limit=1] text
kill @e[type=text_display,tag=handelsmarkt_offers_load_data]

data modify entity @n[type=armor_stand,tag=handelsmarkt_offers_load] HandItems[0].components."minecraft:custom_data" set value {handelsmarkt_item:true}
data modify entity @n[type=armor_stand,tag=handelsmarkt_offers_load] HandItems[0].components."minecraft:custom_data".ID set from storage elements_handelsmarkt_offers Load_Offers[0].ID
$item replace entity @s enderchest.$(Slot) from entity @n[type=armor_stand,tag=handelsmarkt_offers_load] weapon.mainhand

data remove storage elements_handelsmarkt_offers Load_Offers[0]

kill @n[type=armor_stand,tag=handelsmarkt_offers_load]