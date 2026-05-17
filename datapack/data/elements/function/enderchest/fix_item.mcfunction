
$execute if items entity @s player.cursor * run data modify storage elements_debug Item set from entity @s EnderItems[{Slot:$(slot)b}]
$execute unless items entity @s player.cursor * run item replace entity @s player.cursor from entity @s enderchest.$(slot)



data remove storage elements_debug Item.Slot
execute if data storage elements_debug Item run function elements:enderchest/give_items with storage elements_debug

$execute if data entity @s EnderItems[{Slot:$(slot)b}] run item replace entity @s enderchest.$(slot) with air

