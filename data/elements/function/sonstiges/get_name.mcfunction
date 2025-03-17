execute if score @s elements_get-name_status matches 0 run data modify storage elements_get-name name set value "%empty%"

execute if score @s elements_get-name_status matches 1 store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute if score @s elements_get-name_status matches 1 run function elements:sonstiges/get_name_set with storage elements_getid