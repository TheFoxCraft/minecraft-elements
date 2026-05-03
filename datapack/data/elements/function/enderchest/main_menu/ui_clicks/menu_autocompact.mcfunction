item replace entity @s player.cursor from entity @s enderchest.0
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
scoreboard players set @s elements_enderchest_interface_number 2
function elements:enderchest/load