
#summon sword
data modify storage elements_mystery_excalibur sword_x set from storage elements_retina:output ContactCoordinates[0]
data modify storage elements_mystery_excalibur sword_y set from storage elements_retina:output ContactCoordinates[1]
data modify storage elements_mystery_excalibur sword_z set from storage elements_retina:output ContactCoordinates[2]
execute as @s at @s run playsound item.trident.thunder master @a[distance=..50] ~ ~ ~ 100 1


function elements:custom-items/mystery/excalibur/summon_sword with storage minecraft:elements_mystery_excalibur


execute unless data storage elements_retina:output TargetedEntity run return fail
function elements:custom-items/mystery/excalibur/damage with storage elements_retina:output TargetedEntity
