scoreboard players add @s elements_miningxp_farming_level 1
execute at @s run playsound minecraft:block.beacon.activate master @s
scoreboard players add @s elements_mana_mana-max 10
execute as @s[scores={elements_miningxp_farming_level=..99}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Du bist im Farming-Level aufgestiegen: Level "},{"score":{"name":"@s","objective":"elements_miningxp_farming_level"}}]
execute as @s[scores={elements_miningxp_farming_level=100}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text":"Herzlichen Glückwünsch!","color":"gold"},"\n",{"text":"Du hast das Maximale Farming-Level erreicht!","color":"gold"}]
execute as @s[scores={elements_miningxp_farming_level=100}] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 100
execute as @s[scores={elements_miningxp_farming_level=100}] if score .server elements_uniqueitem_miningxp_honiggolem_elixir matches 0 run function elements:uniques/trigger/honiggolemelixir
function elements:miningxp/farmingxp/set_goals