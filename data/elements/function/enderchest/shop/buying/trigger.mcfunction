
$execute if score @s elements_enderchest_shop_$(shop) matches 0 at @s run return run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0



$scoreboard players set @s elements_enderchest_shop_calculation $(price)
$scoreboard players set .server elements_enderchest_shop_calculation $(price_multiplier)

$execute if score @s elements_enderchest_shop_$(shop) matches 2 run scoreboard players operation @s elements_enderchest_shop_calculation *= .server elements_enderchest_shop_calculation

execute store result storage elements_shop price int 1 run scoreboard players get @s elements_enderchest_shop_calculation
scoreboard players remove @s elements_enderchest_shop_calculation 1
execute store result storage elements_shop price_to_few int 1 run scoreboard players get @s elements_enderchest_shop_calculation

$data modify storage elements_shop type set value '$(type)'
$data modify storage elements_shop is_loot set value $(is_loot)


function elements:enderchest/shop/buying/buy with storage elements_shop