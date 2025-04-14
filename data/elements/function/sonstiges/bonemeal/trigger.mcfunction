advancement revoke @s only elements:other/detect_bonemeal


execute if score @s elements_custom-items_item-click_cooldown matches 1.. run return run scoreboard players set @s elements_custom-items_item-click_cooldown 2

function elements_retina:traverse/setup
data modify storage elements_bonemeal x set from storage elements_retina:output TargetedBlock[0]
data modify storage elements_bonemeal y set from storage elements_retina:output TargetedBlock[1]
data modify storage elements_bonemeal z set from storage elements_retina:output TargetedBlock[2]

function elements:sonstiges/bonemeal/detect with storage elements_bonemeal

scoreboard players set @s elements_custom-items_item-click_cooldown 2