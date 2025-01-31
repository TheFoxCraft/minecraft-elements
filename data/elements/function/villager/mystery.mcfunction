execute as @e[type=minecraft:interaction,tag=mystery] at @s on target run tag @s add mystery
execute as @a[tag=mystery] run scoreboard players set @s elements_mystery_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=mystery,distance=..4] run data remove entity @s interaction
tag @a remove mystery

#300

execute as @a[scores={elements_mystery_clicked=1}] run tellraw @s ["","\n",{"text":"Mystery:","underlined":true,"color":"dark_red"},"\n",{"text":"Möchtest du eine Lootbox für "},{"text": "1000 Level","color": "green"},{"text": " kaufen?"},"\n","\n",{"text":"Kaufen!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 301"}}]
execute as @a[scores={elements_mystery_clicked=1}] run scoreboard players set @s elements_mystery_clicked 0

execute as @a[scores={just-ignore=301,elements_mainlevel=..999}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s ["","\n",{"text":"Mystery:","underlined":true,"color":"dark_red"},"\n",{"text": "Du hast zu wenig Level!"}]
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run give @s rotten_flesh
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run scoreboard players add @s elements_stats_lootbox 1
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run scoreboard players add #server elements_stats_lootbox 1
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run effect give @s resistance 1 10 true
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;16711680,65280,255]}]}}}}
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] unless score @s elements_stats_lootbox matches 100 run tellraw @s ["","\n",{"text":"Mystery:","underlined":true,"color":"dark_red"},"\n",{"text":"Gekauft! Möchtest du erneut eine Lootbox für "},{"text": "1000 Level","color": "green"},{"text": " kaufen?"},"\n","\n",{"text":"Kaufen!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 301"}}]
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] if score @s elements_stats_lootbox matches 100 run tellraw @s ["","\n",{"text":"Mystery:","underlined":true,"color":"dark_red"},"\n",{"text":"Gekauft! Das war schon deine 100. Lootbox, du scheinst Glücksspiel ja zu mögen!"},"\n","\n",{"text": "Deswegen habe ich etwas für dich! Und zwar ein Casino IN deiner Endertruhe."},"\n","\n",{"text":"Das klingt sehr cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 302"}}]
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] if score @s elements_stats_lootbox matches 100 run scoreboard players set @s elements_enderchest_level_casino 1
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..,elements_enderchest_interface_number=1}] at @s if entity @e[type=villager,tag=mystery,distance=..10] if score @s elements_stats_lootbox matches 100 run item replace entity @s enderchest.18 with diamond[custom_name='{"color":"gold","text":"Casino"}',custom_model_data=1] 1
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run xp add @s -1000 levels
execute as @a[scores={just-ignore=301,elements_mainlevel=1000..}] at @s unless entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=301}] run scoreboard players set @s just-ignore 0
execute as @a[scores={just-ignore=302}] at @s if entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s ["","\n",{"text":"Mystery:","underlined":true,"color":"dark_red"},"\n",{"text": "Dann schau es dir doch mal an!"}]
execute as @a[scores={just-ignore=302}] at @s unless entity @e[type=villager,tag=mystery,distance=..10] run tellraw @s {"text": "Du bist zu weit weg!","color": "red"}
execute as @a[scores={just-ignore=302}] run scoreboard players set @s just-ignore 0







