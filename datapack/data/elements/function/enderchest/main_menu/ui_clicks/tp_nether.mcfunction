item replace entity @s[scores={elements_enderchest_settings_tp-mode=1}] player.cursor from entity @s enderchest.24
execute store result storage elements_rotation_dimension nether int 1 run scoreboard players get @s elements_enderchest_settings_rotation_nether
function elements:enderchest/settings/dimension_rotation/nether_tp with storage elements_rotation_dimension
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
xp add @s 0 points
function elements:enderchest/load