item replace entity @s player.cursor from entity @s enderchest.18
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
scoreboard players set @s elements_enderchest_interface_number 8
function elements:enderchest/load