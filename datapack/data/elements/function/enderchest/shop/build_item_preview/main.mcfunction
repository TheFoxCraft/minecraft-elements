scoreboard players set @s elements_enderchest_shop_calculation 1
$execute if score @s elements_enderchest_shop_calculation matches $(is_loot) run function elements:enderchest/shop/build_item_preview/loot_item {slot:$(slot),type:"$(type)"}
$execute unless score @s elements_enderchest_shop_calculation matches $(is_loot) run function elements:enderchest/shop/build_item_preview/normal_item {slot:$(slot),type:"$(type)"}
$execute if score @s elements_enderchest_shop_$(shop) matches 1 run item modify entity @s enderchest.$(slot) [{ "function": "minecraft:set_name", "entity": "this", "name": [{"$(name_type)": "$(name)","color": "yellow","italic": false},{"text": " [$(price) Level]","color": "yellow","italic": false}]},{"function": "minecraft:set_custom_model_data","value": $(cumoda)}]
$execute if score @s elements_enderchest_shop_$(shop) matches 1 run return fail

$scoreboard players set @s elements_enderchest_shop_calculation $(price)
$scoreboard players set .server elements_enderchest_shop_calculation $(price_multiplier)
scoreboard players operation @s elements_enderchest_shop_calculation *= .server elements_enderchest_shop_calculation
execute store result storage elements_shop price_expensive int 1 run scoreboard players get @s elements_enderchest_shop_calculation
$data modify storage elements_shop slot set value $(slot)
$data modify storage elements_shop name set value "$(name)"
$data modify storage elements_shop name_type set value "$(name_type)"
$data modify storage elements_shop price set value $(price)
$data modify storage elements_shop cumoda set value $(cumoda)
function elements:enderchest/shop/build_item_preview/expensive_item with storage elements_shop