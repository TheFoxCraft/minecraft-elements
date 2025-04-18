execute as @s run scoreboard players set @s elements_enderchest_stats_load 1
execute as @s at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["stats"],Invulnerable:1b,Silent:1b}
item replace entity @e[limit=1,tag=stats,type=armor_stand] weapon.mainhand with oak_hanging_sign[custom_name='{"bold":true,"color":"gold","text":"Handelsplatz","italic": false}',custom_model_data=1] 1
summon text_display ~ ~ ~ {text:'[{"text":"Du kannst hier eigene Items verkaufen,","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"oder die Items der anderen Kaufen.","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":" ","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"Um dein Eigenes Item zu verkaufen klicke auf \\"Neues Angebot\\".","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":" ","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"Klicke dich einfach durch die Seiten, zum","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"Kaufen genügt ein Klick, wenn du genügend Token hast.","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"Deine Stats zum Handelsmarkt:","color":"gold","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Token eingenommen: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_stats_tokens_earned"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Token ausgegeben: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_stats_tokens_spend"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Token für Gebüren ausgegeben: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_stats_tokens_spend_for_fine"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Angebote Erstellt: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_stats_offers_created"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Angebote Verkauft: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_stats_offers_sold"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Angebote Gekauft: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_enderchest_handelsplatz_stats_offers_buyed"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"","color":"gray","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {text:'[{"text":"Server-Stats zum Handelsmarkt:","color":"gold","italic": false}]',Tags:["stats"],alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Token eingenommen: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_enderchest_handelsplatz_stats_tokens_earned"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Token ausgegeben: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_enderchest_handelsplatz_stats_tokens_spend"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Token für Gebüren ausgegeben: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_enderchest_handelsplatz_stats_tokens_spend_for_fine"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Angebote Erstellt: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_enderchest_handelsplatz_stats_offers_created"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Angebote Gekauft: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_enderchest_handelsplatz_stats_offers_buyed"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]



# server stats nichtmehr notwendig, da durch leaderboards ersetzt

#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"translate":"elements.main.other.space"}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server-Stats","color":"gold","bold": true,"italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Level:","color":"blue","italic": false},{"text":" (Online) ","color":"dark_gray","italic": false},{"score":{"name":".server","objective":"elements_stats_serverlevel"},"color":"gray","italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Höchst-Level Server: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_stats_servermaxlevel"},"color":"gray","italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Level verloren: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_stats_serverlevellost"},"color":"gray","italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Tode: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_stats_serverdeath"},"color":"gray","italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Lootboxen geöffnet: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_stats_lootbox"},"color":"gray","italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]
#summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Spielzeit: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_stats_playtime_h"},"color":"gray","italic": false},{"translate":"elements.main.other.:","color":"gray","italic": false},{"score":{"name":".server","objective":"elements_stats_playtime_min"},"color":"gray","italic": false},{"translate":"elements.main.other.:","color":"gray","italic": false},{"score":{"name":".server","objective":"elements_stats_playtime_sec"},"color":"gray","italic": false}]',alignment:center}
#data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
#kill @e[type=text_display,tag=stats]


item replace entity @s enderchest.3 from entity @e[tag=stats,type=armor_stand,limit=1] weapon.mainhand
kill @e[tag=stats,type=armor_stand]


#tellraw @s {"text": "Status aktualisiert!","color": "gold"}

execute as @a[scores={elements_enderchest_stats_load=1}] run scoreboard players set @s elements_enderchest_stats_load 0