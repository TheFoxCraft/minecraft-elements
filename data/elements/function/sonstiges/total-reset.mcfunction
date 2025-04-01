execute as @s store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s run function elements:sonstiges/total-reset_enderchest-clear with storage elements_getid
execute as @s run function elements:enderchest/enderchest-clear
execute as @s run clear @s
execute as @s run team leave @s
execute as @s run xp set @s 0 levels
execute as @s run xp set @s 0 points
execute as @s[scores={elements_homedimension=1}] run scoreboard players remove .server elements_data_playerin_oceanblock 1
execute as @s[scores={elements_homedimension=2}] run scoreboard players remove .server elements_data_playerin_stoneblock 1
execute as @s[scores={elements_homedimension=3}] run scoreboard players remove .server elements_data_playerin_skyblock 1
execute as @s[scores={elements_homedimension=4}] run scoreboard players remove .server elements_data_playerin_netherblock 1

execute as @s run scoreboard players operation .server elements_total-reset_temp-id = @s elements_playerid
execute as @s if score .server elements_override_by_dd matches 1 run scoreboard players operation .server dd_elements_total-reset_temp-id = @s dd_playerID
execute as @s run scoreboard players reset @s
execute as @s run scoreboard players operation @s elements_playerid = .server elements_total-reset_temp-id
execute as @s if score .server elements_override_by_dd matches 1 run scoreboard players operation @s dd_playerID = .server dd_elements_total-reset_temp-id
execute as @s run function elements:sonstiges-always/firstlogin
execute as @s run scoreboard players set @s elements_playtime 19

