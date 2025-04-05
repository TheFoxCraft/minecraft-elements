execute as @a[scores={elements_playtime=18}] run scoreboard players set @s elements_playerid 0


execute as @a[scores={elements_playerid=0},limit=1] run scoreboard players add .server elements_playerid 1
execute as @a[scores={elements_playerid=0},limit=1] run scoreboard players operation @s elements_playerid = .server elements_playerid

execute as @a[scores={elements_playtime=20}] run function elements:sonstiges/firstlogin_set_values