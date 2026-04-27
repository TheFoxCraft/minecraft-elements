$execute as @s[scores={elements_mainlevel=..$(price_to_few)}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
$execute as @s[scores={elements_mainlevel=..$(price_to_few)}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
$execute as @s[scores={elements_mainlevel=$(price)..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
$execute as @s[scores={elements_mainlevel=$(price)..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
$execute as @s[scores={elements_mainlevel=$(price)..}] run scoreboard players set @s elements_enderchest_shop_calculation 1
$execute as @s[scores={elements_mainlevel=$(price)..}] if score @s elements_enderchest_shop_calculation matches $(is_loot) run function elements:sonstiges/savely_give_loot {id:'elements:items/shops/$(type)'}
$execute as @s[scores={elements_mainlevel=$(price)..}] unless score @s elements_enderchest_shop_calculation matches $(is_loot) run function elements:enderchest/shop/buying/normal_item {type:'$(type)'}
$execute as @s[scores={elements_mainlevel=$(price)..}] run xp add @s -$(price) levels
