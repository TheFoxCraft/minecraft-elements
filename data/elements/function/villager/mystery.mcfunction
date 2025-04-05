execute as @e[type=minecraft:interaction,tag=mystery] at @s on target run tag @s add mystery
execute as @s[tag=mystery] run scoreboard players set @s elements_mystery_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=mystery,distance=..10] run data remove entity @s interaction
tag @s remove mystery

#300

execute as @s[scores={elements_mystery_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.mystery.name.chat","color":"yellow"},{"text":"Möchtest du eine Lootbox für "},{"text": "1000 Level","color": "green"},{"text": " kaufen? Bei jedem Kauf nimmst du Außerdem an der Lotterie Teil und 500 Deiner Level gehen in den Pot. Aktuell sind "},{"score": {"name": ".server","objective": "elements_mystery_lootbox_jackpot"},"color": "green"},{"text": " Level","color": "green"},{"text": " im Pot."},"\n","\n",{"text":"Kaufen!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 301"}}]
execute as @s[scores={elements_mystery_clicked=1}] run scoreboard players set @s elements_mystery_clicked 0

execute as @s[scores={z_just-ignore=301,elements_mainlevel=..999}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.mystery.name.chat","color":"yellow"},{"text": "Du hast zu wenig Level!"}]
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run scoreboard players add @s elements_stats_lootbox 1
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run scoreboard players add .server elements_stats_lootbox 1
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run scoreboard players add .server elements_mystery_lootbox_jackpot 500
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] in elements:hub run summon firework_rocket -14.5 101.00 -10.5 {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,65280,255]}]}}}}
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] unless score @s elements_stats_lootbox matches 100 run tellraw @s ["","\n",{"translate":"elements.villager.mystery.name.chat","color":"yellow"},{"text":"Gekauft! Möchtest du erneut eine Lootbox für "},{"text": "1000 Level","color": "green"},{"text": " kaufen? Jetzt sind "},{"score": {"name": ".server","objective": "elements_mystery_lootbox_jackpot"},"color": "green"},{"text": " Level","color": "green"},{"text": " im Pot."},"\n","\n",{"text":"Kaufen!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 301"}}]
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run function elements:villager/mystery/randomizer with entity @s
#casino
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] if score @s elements_stats_lootbox matches 100 run tellraw @s ["","\n",{"translate":"elements.villager.mystery.name.chat","color":"yellow"},{"text":"Gekauft! Das war schon deine 100. Lootbox, du scheinst Glücksspiel ja zu mögen!"},"\n",{"text": "Deswegen habe ich etwas für dich! Und zwar ein Casino IN deiner Endertruhe."},"\n","\n",{"text":"Oha, Das klingt sehr cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 302"}}]
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] if score @s elements_stats_lootbox matches 100 run scoreboard players set @s elements_enderchest_level_casino 1
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run xp add @s -1000 levels
execute as @s[scores={z_just-ignore=301,elements_mainlevel=1000..}] at @s unless entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=301}] run scoreboard players set @s z_just-ignore 0

execute as @s[scores={z_just-ignore=302}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s ["","\n",{"translate":"elements.villager.mystery.name.chat","color":"yellow"},{"text": "Allerdings, schau es dir doch mal an!"}]
execute as @s[scores={z_just-ignore=302}] at @s unless entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @s[scores={z_just-ignore=302}] run scoreboard players set @s z_just-ignore 0




# auslage

execute in elements:hub positioned -14.5 101.0 -8.50 if entity @e[type=item,distance=..0.01] run setblock ~ ~ ~ light_weighted_pressure_plate
execute in elements:hub positioned -14.5 101.0 -8.50 unless entity @e[type=item,distance=..0.01] run setblock ~ ~ ~ air
execute in elements:hub positioned -14.5 101.0 -8.50 as @e[type=item,tag=mystery_loot,distance=..2] run data modify entity @s Age set value 0

