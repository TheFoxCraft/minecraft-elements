scoreboard players add @s elements_miningxp_fishing_level 1
execute at @s run playsound minecraft:block.beacon.activate master @s
scoreboard players add @s elements_mana_mana-max 10
execute as @s[scores={elements_miningxp_fishing_level=..99}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Du bist im Fishing-Level aufgestiegen: Level "},{"score":{"name":"@s","objective":"elements_miningxp_fishing_level"}}]
execute as @s[scores={elements_miningxp_fishing_level=100}] run tellraw @s ["",{"text":"Herzlichen Glückwünsch!","color":"gold"},"\n",{"text":"Du hast das Maximale Fishing-Level erreicht!","color":"gold"}]
execute as @s[scores={elements_miningxp_fishing_level=100}] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 100
execute as @s[scores={elements_miningxp_fishing_level=100}] if score .server elements_uniqueitem_miningxp_nasser_klumpen matches 0 run function elements:uniques/trigger/nasser_klumpen
function elements:miningxp/fishingxp/set_goals