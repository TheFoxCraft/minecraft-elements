execute as @s run scoreboard players set @s elements_enderchest_stats_load 1
execute as @s at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["stats"]}
item replace entity @e[limit=1,tag=stats,type=armor_stand] weapon.mainhand with lectern[custom_name='{"bold":true,"color":"gold","text":"Player-Stats","italic": false}',custom_model_data=1] 1
summon text_display ~ ~ ~ {text:'[{"text":"Name: ","color":"blue","italic": false},{"selector":"@a[scores={elements_enderchest_stats_load=1},limit=1]","color":"gray","italic": false}]',Tags:["stats"]}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Level: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_mainlevel"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Höchst-Level: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_maxlevel"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Level verloren: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_levellost"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"EQ-Score: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_eq"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Mining-Level: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_miningxp_mining_level"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Foraging-Level: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_miningxp_foresting_level"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Farming-Level: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_harvestinglevel"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Tode: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_deathcount"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Lootboxen geöffnet: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_lootbox"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Spielzeit: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_playtime_h"},"color":"gray","italic": false},{"text":":","color":"gray","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_playtime_min"},"color":"gray","italic": false},{"text":":","color":"gray","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_stats_playtime_sec"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]


summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":" "}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server-Stats","color":"gold","bold": true,"italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Level:","color":"blue","italic": false},{"text":" (Online) ","color":"dark_gray","italic": false},{"score":{"name":"#server","objective":"elements_stats_serverlevel"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Höchst-Level Server: ","color":"blue","italic": false},{"score":{"name":"#server","objective":"elements_stats_servermaxlevel"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Level verloren: ","color":"blue","italic": false},{"score":{"name":"#server","objective":"elements_stats_serverlevellost"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Tode: ","color":"blue","italic": false},{"score":{"name":"#server","objective":"elements_stats_serverdeath"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Lootboxen geöffnet: ","color":"blue","italic": false},{"score":{"name":"#server","objective":"elements_stats_lootbox"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]
summon text_display ~ ~ ~ {Tags:["stats"],text:'[{"text":"Server Spielzeit: ","color":"blue","italic": false},{"score":{"name":"#server","objective":"elements_stats_playtime_h"},"color":"gray","italic": false},{"text":":","color":"gray","italic": false},{"score":{"name":"#server","objective":"elements_stats_playtime_min"},"color":"gray","italic": false},{"text":":","color":"gray","italic": false},{"score":{"name":"#server","objective":"elements_stats_playtime_sec"},"color":"gray","italic": false}]'}
data modify entity @e[tag=stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=stats,limit=1] text
kill @e[type=text_display,tag=stats]


item replace entity @s enderchest.26 from entity @e[tag=stats,type=armor_stand,limit=1] weapon.mainhand
kill @e[tag=stats,type=armor_stand]


#tellraw @s {"text": "Status aktualisiert!","color": "gold"}

execute as @a[scores={elements_enderchest_stats_load=1}] run scoreboard players set @s elements_enderchest_stats_load 0