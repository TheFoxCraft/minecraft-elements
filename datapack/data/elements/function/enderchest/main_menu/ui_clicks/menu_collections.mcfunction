item replace entity @s[scores={elements_enderchest_settings_tp-mode=1..2}] player.cursor from entity @s enderchest.13
item replace entity @s[scores={elements_enderchest_settings_tp-mode=3}] player.cursor from entity @s enderchest.23
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
scoreboard players set @s elements_enderchest_interface_number 6
function elements:enderchest/load