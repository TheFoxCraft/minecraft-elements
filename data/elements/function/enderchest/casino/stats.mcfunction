execute as @s run scoreboard players set @s elements_enderchest_stats_load 1
execute as @s at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["casino_stats"]}
item replace entity @e[limit=1,tag=casino_stats,type=armor_stand] weapon.mainhand with lectern[custom_name='{"bold":true,"color":"gold","text":"Casino Stats:","italic": false}',custom_model_data=2] 1
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Persönlich","color": "gold","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level investiert: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_casino_stats_lvlinvestiert"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level gewonnen: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_casino_stats_lvlgewonnen"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level verloren: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_casino_stats_lvlverloren"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level Ertrag: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_casino_stats_lvlumsatz"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Pferderennen gespielt: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_casino_stats_game_horse"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Glücksrad gedreht: ","color":"blue","italic": false},{"score":{"name":"@a[scores={elements_enderchest_stats_load=1},limit=1]","objective":"elements_casino_stats_game_luckywheel"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]



summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"translate":"elements.main.other.space"}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Server","color":"gold","bold": true,"italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level investiert: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_casino_stats_lvlinvestiert"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level gewonnen: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_casino_stats_lvlgewonnen"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level verloren: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_casino_stats_lvlverloren"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Level Ertrag: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_casino_stats_lvlumsatz"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Pferderennen gespielt: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_casino_stats_game_horse"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]
summon text_display ~ ~ ~ {Tags:["casino_stats"],text:'[{"text":"Glücksrad gedreht: ","color":"blue","italic": false},{"score":{"name":".server","objective":"elements_casino_stats_game_luckywheel"},"color":"gray","italic": false}]',alignment:center}
data modify entity @e[tag=casino_stats,type=armor_stand,limit=1] HandItems[0].components.minecraft:lore append from entity @e[type=text_display,tag=casino_stats,limit=1] text
kill @e[type=text_display,tag=casino_stats]



item replace entity @s enderchest.19 from entity @e[tag=casino_stats,type=armor_stand,limit=1] weapon.mainhand
kill @e[tag=casino_stats,type=armor_stand]


#tellraw @s {"text": "Status aktualisiert!","color": "gold"}

execute as @a[scores={elements_enderchest_stats_load=1}] run scoreboard players set @s elements_enderchest_stats_load 0