execute if score @s elements_mainlevel < @s elements_casino_game_einsatz run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute if score @s elements_mainlevel < @s elements_casino_game_einsatz run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast zu wenig Level für einen Einatz!"}]
execute if score @s elements_mainlevel < @s elements_casino_game_einsatz run return fail

execute store result score @s elements_random run random value 1..100

scoreboard players add @s elements_casino_stats_game_double-or-nothing 1
scoreboard players add .server elements_casino_stats_game_double-or-nothing 1
scoreboard players operation @s elements_casino_stats_lvlinvestiert += @s elements_casino_game_einsatz
scoreboard players operation .server elements_casino_stats_lvlinvestiert += @s elements_casino_game_einsatz


#win
execute if score @s elements_random matches 1..50 if score @s elements_casino_game_double-or-nothing_stage matches 1 store result storage elements_casino double-or-nothing.einsatz.level int -1 run scoreboard players get @s elements_casino_game_einsatz
execute if score @s elements_random matches 1..50 if score @s elements_casino_game_double-or-nothing_stage matches 1 run function elements:enderchest/casino/double-or-nothing/give_level with storage elements_casino double-or-nothing.einsatz
execute if score @s elements_random matches 1..50 run scoreboard players add @s elements_casino_game_double-or-nothing_stage 1
execute if score @s elements_random matches 1..50 run scoreboard players set @s elements_casino_game_double-or-nothing_calc 2
execute if score @s elements_random matches 1..50 run scoreboard players operation @s elements_casino_game_double-or-nothing_balance *= @s elements_casino_game_double-or-nothing_calc
execute if score @s elements_random matches 1..50 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 0.9

#loss
execute if score @s elements_random matches 51..100 if score @s elements_casino_game_double-or-nothing_stage matches 1 store result storage elements_casino double-or-nothing.einsatz.level int -1 run scoreboard players get @s elements_casino_game_einsatz
execute if score @s elements_random matches 51..100 if score @s elements_casino_game_double-or-nothing_stage matches 1 run function elements:enderchest/casino/double-or-nothing/give_level with storage elements_casino double-or-nothing.einsatz
execute if score @s elements_random matches 51..100 run scoreboard players operation @s elements_casino_stats_lvlverloren += @s elements_casino_game_einsatz
execute if score @s elements_random matches 51..100 run scoreboard players operation @s elements_casino_stats_lvlumsatz -= @s elements_casino_game_einsatz
execute if score @s elements_random matches 51..100 run scoreboard players operation .server elements_casino_stats_lvlverloren += @s elements_casino_game_einsatz
execute if score @s elements_random matches 51..100 run scoreboard players operation .server elements_casino_stats_lvlumsatz -= @s elements_casino_game_einsatz
execute if score @s elements_random matches 51..100 run scoreboard players set @s elements_casino_game_double-or-nothing_stage 1
execute if score @s elements_random matches 51..100 run scoreboard players operation @s elements_casino_game_double-or-nothing_balance = @s elements_casino_game_einsatz
execute if score @s elements_random matches 51..100 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0