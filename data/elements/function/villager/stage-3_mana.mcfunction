execute as @e[type=minecraft:interaction,tag=stage-3_mana] at @s on target run tag @s add stage-3_mana
execute as @s[tag=stage-3_mana] run scoreboard players set @s elements_villager_stage-3_mana_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=stage-3_mana,distance=..10] run data remove entity @s interaction
tag @s remove stage-3_mana

#800


execute as @s[scores={elements_villager_stage-3_mana_level=0,elements_villager_stage-3_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Willkommen Zurück bei der Magie! Mana ist schon was cooles oder?"},"\n","\n",{"text":"Allerdings!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 800"}}]
execute as @s[scores={elements_villager_stage-3_mana_level=0,elements_villager_stage-3_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-3_mana_clicked 0
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=800}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Bestimmt warst du aber oft genervt, dass du ein Item verwenden wolltest, aber gerade nicht genügend Mana zur Verfügung hattest, oder?"},"\n","\n",{"text":"Ja sehr oft!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 801"}}]
execute as @s[scores={z_just-ignore=800}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=801}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Und genau dagegen kann ich dir helfen!"},"\n","\n",{"text":"Echt wie? Manatränke hab ich schon..","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 802"}}]
execute as @s[scores={z_just-ignore=801}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=802}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"ja, Manatränke sind auch praktisch, aber was hältst du davon, dass deine Natürliche Regeneration schneller wäre?"},"\n","\n",{"text":"Das wäre sehr cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 803"}}]
execute as @s[scores={z_just-ignore=802}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=803}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Na dann, genau das Hab ich nämlich für dich!"},"\n","\n",{"text":"Und was macht das genau und was kostet das?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 804"}}]
execute as @s[scores={z_just-ignore=803}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=804}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Gegen 10.000 Level und eines deiner Herzen kann ich dir deine Regeneration von 1 auf 2 Mana pro Sekunde erhöhen!"},"\n","\n",{"text":"Okay, das ist viel, aber vermutlich gerechtfertigt, ich mach mich mal ran..","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 805"}}]
execute as @s[scores={z_just-ignore=804}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=805}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Mach das, ich warte hier"}]
execute as @s[scores={elements_villager_stage-3_mana_level=0,z_just-ignore=805}] run scoreboard players set @s elements_villager_stage-3_mana_level 1
execute as @s[scores={z_just-ignore=805}] run scoreboard players set @s z_just-ignore 0



execute as @s[scores={elements_villager_stage-3_mana_level=1,elements_villager_stage-3_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Und hast du die 10.000 Level?"},"\n","\n",{"text":"Ja, hier sind sie","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 806"}}]
execute as @s[scores={elements_villager_stage-3_mana_level=1,elements_villager_stage-3_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-3_mana_clicked 0
execute as @s[scores={elements_villager_stage-3_mana_level=1,z_just-ignore=806,elements_mainlevel=10000..}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Perfekt!"}]
execute as @s[scores={elements_villager_stage-3_mana_level=1,z_just-ignore=806,elements_mainlevel=10000..}] run xp add @s -10000 levels
execute as @s[scores={elements_villager_stage-3_mana_level=1,z_just-ignore=806,elements_mainlevel=10000..}] run scoreboard players set @s elements_villager_stage-3_mana_level 2
execute as @s[scores={elements_villager_stage-3_mana_level=1,z_just-ignore=806,elements_mainlevel=..9999}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Du hast keine 10.000 Level"}]
execute as @s[scores={z_just-ignore=806}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={elements_villager_stage-3_mana_level=2,elements_villager_stage-3_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"So jetzt noch ein Permanentes Herz von dir!"},"\n","\n",{"text":"Nimm","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 807"}}]
execute as @s[scores={elements_villager_stage-3_mana_level=2,elements_villager_stage-3_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-3_mana_clicked 0
execute as @s[scores={elements_villager_stage-3_mana_level=2,z_just-ignore=807,elements_maxhealth=3..}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Perfekt! Ab jetzt hast du eine Regeneration 2 Mana pro Sekunde und kannst deine Mana-Items schneller verwenden!"}]
execute as @s[scores={elements_villager_stage-3_mana_level=2,z_just-ignore=807,elements_maxhealth=3..}] run scoreboard players remove @s elements_maxhealth 2
execute as @s[scores={elements_villager_stage-3_mana_level=2,z_just-ignore=807,elements_maxhealth=3..}] run scoreboard players set @s elements_mana_regeneration-per-sec 2
execute as @s[scores={elements_villager_stage-3_mana_level=2,z_just-ignore=807,elements_maxhealth=3..}] run scoreboard players set @s elements_villager_stage-3_mana_level 3
execute as @s[scores={elements_villager_stage-3_mana_level=2,z_just-ignore=807,elements_maxhealth=..2}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Du hast zu Wenig Maximale Leben!"}]
execute as @s[scores={z_just-ignore=807}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_villager_stage-3_mana_level=3,elements_villager_stage-3_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_3.mana.name.chat","color":"yellow"},{"text":"Mehr kann ich leider nicht für dich tun!"}]
execute as @s[scores={elements_villager_stage-3_mana_level=3,elements_villager_stage-3_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-3_mana_clicked 0

