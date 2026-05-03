item replace entity @s[scores={elements_enderchest_settings_tp-mode=1}] player.cursor from entity @s enderchest.22
item replace entity @s[scores={elements_enderchest_settings_tp-mode=2}] player.cursor from entity @s enderchest.23
item replace entity @s[scores={elements_enderchest_settings_tp-mode=3,elements_enderchest_settings_dimension=5}] player.cursor from entity @s enderchest.21
execute store result storage elements_rotation_dimension hub int 1 run scoreboard players get @s elements_enderchest_settings_rotation_hub
function elements:enderchest/settings/dimension_rotation/hub_tp with storage elements_rotation_dimension
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
xp add @s 0 points
function elements:enderchest/load