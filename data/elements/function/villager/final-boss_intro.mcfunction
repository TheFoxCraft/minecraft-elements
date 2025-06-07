execute as @e[type=minecraft:interaction,tag=final-boss_intro] at @s on target run tag @s add final-boss_intro
execute as @s[tag=final-boss_intro] run scoreboard players set @s elements_villager_final-boss_intro_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @s[tag=final-boss_intro,distance=..10] run data remove entity @s interaction
tag @s remove final-boss_intro

#1500



execute as @s[scores={elements_villager_final-boss_intro_level=0,elements_villager_final-boss_intro_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"So, ihr habt es also Geschafft"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1500"}}]
execute as @s[scores={elements_villager_final-boss_intro_level=0,elements_villager_final-boss_intro_clicked=1}] run scoreboard players set @s elements_villager_final-boss_intro_clicked 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1500}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Ihr habt die 6 Stages bezwungen und die Bosse besiegt"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1501"}}]
execute as @s[scores={z_just-ignore=1500}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1501}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Doch all das war nur die Vorbereitung"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1502"}}]
execute as @s[scores={z_just-ignore=1501}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1502}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Sie waren nur kleine Helfer des Wardens"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1503"}}]
execute as @s[scores={z_just-ignore=1502}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1503}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Doch der Warden ist viel mächtiger"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1504"}}]
execute as @s[scores={z_just-ignore=1503}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1504}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Aber ihr seid die einzigen, die in der Lage dazu sind, ihn zu bezwingen!"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1505"}}]
execute as @s[scores={z_just-ignore=1504}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1505}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Ich habe hier einen Aufzug, der euch nach unten bringt, dort wo ihr seinem Revier schon sehr nahe seid."},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1506"}}]
execute as @s[scores={z_just-ignore=1505}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1506}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Ich vertraue auf euch, ihr schafft das!"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1507"}}]
execute as @s[scores={z_just-ignore=1506}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1507}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Alle werden euch danken und ihr habt den Bann gelöst und den Energiekern zurück!"},"\n","\n",{"text":"-> Weiter","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger z_just-ignore set 1508"}}]
execute as @s[scores={z_just-ignore=1507}] run scoreboard players set @s z_just-ignore 0
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1508}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Jetzt aber ab in den Aufzug und an die Arbeit!"}]
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1508}] in elements:hub run fill 0 100 92 0 101 91 air
execute as @s[scores={elements_villager_final-boss_intro_level=0,z_just-ignore=1508}] run scoreboard players set @s elements_villager_final-boss_intro_level 1
execute as @s[scores={z_just-ignore=1508}] run scoreboard players set @s z_just-ignore 0


execute as @s[scores={elements_villager_final-boss_intro_level=1,elements_villager_final-boss_intro_clicked=1}] run tellraw @s ["","\n",{"translate":"elements.villager.final-boss.intro.name.chat","color":"yellow"},{"text":"Jetzt aber ab in den Aufzug und an die Arbeit!"}]
execute as @s[scores={elements_villager_final-boss_intro_level=1,elements_villager_final-boss_intro_clicked=1}] run scoreboard players set @s elements_villager_final-boss_intro_clicked 0

