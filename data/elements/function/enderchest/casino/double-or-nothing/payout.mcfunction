tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"score": {"name": "@s","objective": "elements_casino_game_double-or-nothing_balance"}},{"text": " Level gewonnen!"}]
execute at @s run playsound entity.player.levelup master @s
execute store result storage elements_casino double-or-nothing.gewinn.level int 1 run scoreboard players get @s elements_casino_game_double-or-nothing_balance
function elements:enderchest/casino/double-or-nothing/give_level with storage elements_casino double-or-nothing.gewinn

scoreboard players operation @s elements_casino_stats_lvlgewonnen += @s elements_casino_game_double-or-nothing_balance
scoreboard players operation @s elements_casino_stats_lvlumsatz += @s elements_casino_game_double-or-nothing_balance
scoreboard players operation .server elements_casino_stats_lvlgewonnen += @s elements_casino_game_double-or-nothing_balance
scoreboard players operation .server elements_casino_stats_lvlumsatz += @s elements_casino_game_double-or-nothing_balance

scoreboard players operation @s elements_casino_game_double-or-nothing_balance = @s elements_casino_game_einsatz
scoreboard players set @s elements_casino_game_double-or-nothing_stage 1