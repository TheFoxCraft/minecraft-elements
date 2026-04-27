execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
scoreboard players set @s elements_enderchest_interface_number 4
function elements:enderchest/enderchest-clear
execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
function elements:enderchest/enderchest-enderchest-load with storage elements_getid
scoreboard players set @s elements_enderchest_interface_clicked 0
