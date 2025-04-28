execute as @s[scores={elements_enderchest_settings_dimension=1}] run function elements:enderchest/settings/dimension_rotation/stone_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_settings_dimension=2}] run function elements:enderchest/settings/dimension_rotation/sky_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_settings_dimension=3}] run function elements:enderchest/settings/dimension_rotation/nether_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_settings_dimension=4}] run function elements:enderchest/settings/dimension_rotation/ocean_tp with storage elements_rotation_dimension
execute as @s[scores={elements_enderchest_settings_dimension=5}] run function elements:enderchest/settings/dimension_rotation/hub_tp with storage elements_rotation_dimension

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
xp add @s 0 points
function elements:enderchest/load