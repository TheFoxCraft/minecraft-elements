execute store result score @s elements_custom-items_zentrierer_rotation run data get entity @s Rotation[0] 10


execute if score @s elements_custom-items_zentrierer_rotation matches -1800..-1575 run data modify storage elements_get_data rotation set value -180
execute if score @s elements_custom-items_zentrierer_rotation matches -1575..-1125 run data modify storage elements_get_data rotation set value -135
execute if score @s elements_custom-items_zentrierer_rotation matches -1125..-675 run data modify storage elements_get_data rotation set value -90
execute if score @s elements_custom-items_zentrierer_rotation matches -675..-225 run data modify storage elements_get_data rotation set value -45
execute if score @s elements_custom-items_zentrierer_rotation matches -225..225 run data modify storage elements_get_data rotation set value 0 
execute if score @s elements_custom-items_zentrierer_rotation matches 225..675 run data modify storage elements_get_data rotation set value 45
execute if score @s elements_custom-items_zentrierer_rotation matches 675..1125 run data modify storage elements_get_data rotation set value 90
execute if score @s elements_custom-items_zentrierer_rotation matches 1125..1575 run data modify storage elements_get_data rotation set value 135
execute if score @s elements_custom-items_zentrierer_rotation matches 1575..1800 run data modify storage elements_get_data rotation set value 180


