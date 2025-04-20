scoreboard players set @s elements_casino_interface 9
scoreboard players set @s elements_casino_game_double-or-nothing_stage 1
scoreboard players operation @s elements_casino_game_double-or-nothing_balance = @s elements_casino_game_einsatz
function elements:enderchest/enderchest-clear