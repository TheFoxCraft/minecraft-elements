data modify storage elements_magisches_wasser_data x set from storage elements_retina:output PlacingPosition[0]
data modify storage elements_magisches_wasser_data y set from storage elements_retina:output PlacingPosition[1]
data modify storage elements_magisches_wasser_data z set from storage elements_retina:output PlacingPosition[2]
execute store result storage elements_magisches_wasser_data damage int 1 run scoreboard players get @s elements_custom-items_shop_magisches-wasser_damage

function elements:custom-items/shop/ocean/magisches_wasser/place with storage elements_magisches_wasser_data


execute as @s[scores={elements_custom-items_shop_magisches-wasser_damage=50..}] run item replace entity @s weapon.mainhand with air
execute as @s[scores={elements_custom-items_shop_magisches-wasser_damage=50..}] at @s run playsound entity.item.break