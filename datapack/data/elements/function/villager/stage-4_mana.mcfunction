execute as @e[type=minecraft:interaction,tag=stage-4_mana] at @s on target run tag @s add stage-4_mana
execute as @s[tag=stage-4_mana] run scoreboard players set @s elements_villager_stage-4_mana_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=stage-4_mana,distance=..10] run data remove entity @s interaction
tag @s remove stage-4_mana

#1000


execute as @s[scores={elements_villager_stage-4_mana_level=0,elements_villager_stage-4_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Guten Tag, du bist bestimmt hier, weil du ein Neues Mana-Item von mir willst, oder?"},"\n","\n",{"text":"Allerdings!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1000"}}]
execute as @s[scores={elements_villager_stage-4_mana_level=0,elements_villager_stage-4_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-4_mana_clicked 0
execute as @s[scores={elements_villager_stage-4_mana_level=0,z_just-ignore=1000}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Aber du hast Recht, ich hab etwas für dich! Es ist aber mehr eine Spielerei"},"\n","\n",{"text":"Echt, cool!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1001"}}]
execute as @s[scores={z_just-ignore=1000}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-4_mana_level=0,z_just-ignore=1001}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Ja, für 7.000 Level kann ich dir einen Schrumpfstab geben, der dich um ein Vielfaches kleiner machen kann."},"\n","\n",{"text":"Oha, cool, ich hol mal die Level","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1002"}}]
execute as @s[scores={z_just-ignore=1001}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_stage-4_mana_level=0,z_just-ignore=1002}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Mach das, ich warte hier"}]
execute as @s[scores={elements_villager_stage-4_mana_level=0,z_just-ignore=1002}] run scoreboard players set @s elements_villager_stage-4_mana_level 1
execute as @s[scores={z_just-ignore=1002}] run scoreboard players set @s z_just-ignore 0



execute as @s[scores={elements_villager_stage-4_mana_level=1,elements_villager_stage-4_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Und, hast du die 7.000 Level?"},"\n","\n",{"text":"Ja, hier sind sie","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1003"}}]
execute as @s[scores={elements_villager_stage-4_mana_level=1,elements_villager_stage-4_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-4_mana_clicked 0
execute as @s[scores={elements_villager_stage-4_mana_level=1,z_just-ignore=1003,elements_mainlevel=7000..}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Perfekt!"}]
execute as @s[scores={elements_villager_stage-4_mana_level=1,z_just-ignore=1003,elements_mainlevel=7000..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/customs/schrumpfstab"}
execute as @s[scores={elements_villager_stage-4_mana_level=1,z_just-ignore=1003,elements_mainlevel=7000..}] run xp add @s -7000 levels
execute as @s[scores={elements_villager_stage-4_mana_level=1,z_just-ignore=1003,elements_mainlevel=7000..}] run scoreboard players set @s elements_villager_stage-4_mana_level 2
execute as @s[scores={elements_villager_stage-4_mana_level=1,z_just-ignore=1003,elements_mainlevel=..6999}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Du hast keine 7.000 Level"}]
execute as @s[scores={z_just-ignore=1003}] run scoreboard players set @s z_just-ignore 0



execute as @s[scores={elements_villager_stage-4_mana_level=2,elements_villager_stage-4_mana_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.stage_4.mana.name.chat","color":"yellow"},{"text":"Mehr kann ich leider nicht für dich tun!"}]
execute as @s[scores={elements_villager_stage-4_mana_level=2,elements_villager_stage-4_mana_clicked=1}] run scoreboard players set @s elements_villager_stage-4_mana_clicked 0

