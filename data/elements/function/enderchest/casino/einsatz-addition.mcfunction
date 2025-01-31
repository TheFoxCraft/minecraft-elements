execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

execute as @s[scores={elements_casino_game=1}] run scoreboard players add @s elements_casino_stats_game_horse 1
execute as @s[scores={elements_casino_game=1}] run scoreboard players add #server elements_casino_stats_game_horse 1
execute as @s[scores={elements_casino_game=1}] run scoreboard players set @s elements_casino_game_horse_load 1

execute as @s[scores={elements_casino_game=2}] run scoreboard players add @s elements_casino_stats_game_luckywheel 1
execute as @s[scores={elements_casino_game=2}] run scoreboard players add #server elements_casino_stats_game_luckywheel 1
execute as @s[scores={elements_casino_game=2}] run scoreboard players set @s elements_casino_game_luckywheel_load 1

