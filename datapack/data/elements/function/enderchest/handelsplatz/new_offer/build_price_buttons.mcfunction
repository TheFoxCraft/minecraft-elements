execute as @s run scoreboard players set @s elements_enderchest_handelsplatz_new_offer_price_buttons_load 1

# Preis verringern
execute as @s at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["handelsmark_new_offer_price_buttons_load"],Invulnerable:1b,Silent:1b}
item replace entity @e[limit=1,tag=handelsmark_new_offer_price_buttons_load,type=armor_stand] weapon.mainhand with copper_ingot[custom_name='{"bold":true,"color":"gold","text":"Preis verringern","italic": false}',custom_model_data=20] 1

summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Klicke um den Preis um ","color":"gray","italic": false},{"translate": "elements.main.tokens.name","color": "gray","italic": false,"with": ["10"]},{"text": " zu verringern.","color": "gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Shift-Klicke um den Preis um ","color":"dark_gray","italic": false},{"translate": "elements.main.tokens.name","color": "dark_gray","italic": false,"with": ["100"]},{"text": " zu verringern.","color": "dark_gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'" "',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Aktueller Preis: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_new_offer_price"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
execute if score @s elements_tokens_count < @s elements_enderchest_handelsplatz_new_offer_price_fine run summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Deine zu zahlende Gebür: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_new_offer_price_fine"},"color":"red","italic": false},{"text": " (Du hast zu wenig Token)","color": "dark_gray"}]',alignment:center}
execute unless score @s elements_tokens_count < @s elements_enderchest_handelsplatz_new_offer_price_fine run summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Deine zu zahlende Gebür: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_new_offer_price_fine"},"color":"gray","italic": false}]',alignment:center}

data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]

item replace entity @s enderchest.12 from entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] weapon.mainhand
kill @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand]

# Preis erhöhen
execute as @s at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["handelsmark_new_offer_price_buttons_load"],Invulnerable:1b,Silent:1b}
item replace entity @e[limit=1,tag=handelsmark_new_offer_price_buttons_load,type=armor_stand] weapon.mainhand with copper_ingot[custom_name='{"bold":true,"color":"gold","text":"Preis erhöhen","italic": false}',custom_model_data=21] 1

summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Klicke um den Preis um ","color":"gray","italic": false},{"translate": "elements.main.tokens.name","color": "gray","italic": false,"with": ["10"]},{"text": " zu erhöhen.","color": "gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Shift-Klicke um den Preis um ","color":"dark_gray","italic": false},{"translate": "elements.main.tokens.name","color": "dark_gray","italic": false,"with": ["100"]},{"text": " zu erhöhen.","color": "dark_gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'" "',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]
summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Aktueller Preis: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_new_offer_price"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]

execute if score @s elements_tokens_count < @s elements_enderchest_handelsplatz_new_offer_price_fine run summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Deine zu zahlende Gebür: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_new_offer_price_fine"},"color":"red","italic": false},{"text": " (Du hast zu wenig Token)","color": "dark_gray"}]',alignment:center}
execute unless score @s elements_tokens_count < @s elements_enderchest_handelsplatz_new_offer_price_fine run summon text_display ~ ~ ~ {Tags:["handelsmark_new_offer_price_buttons_load"],text:'[{"text":"Deine zu zahlende Gebür: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_new_offer_price_fine"},"color":"gray","italic": false}]',alignment:center}

data modify entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load,limit=1] text
kill @e[type=text_display,tag=handelsmark_new_offer_price_buttons_load]

item replace entity @s enderchest.13 from entity @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand,limit=1] weapon.mainhand
kill @e[tag=handelsmark_new_offer_price_buttons_load,type=armor_stand]


execute as @a[scores={elements_enderchest_handelsplatz_new_offer_price_buttons_load=1}] run scoreboard players set @s elements_enderchest_handelsplatz_new_offer_price_buttons_load 0