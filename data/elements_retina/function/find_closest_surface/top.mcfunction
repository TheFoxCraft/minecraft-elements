data modify storage elements_retina:data List set from storage elements_retina:data Surfaces.Top
execute store result score $cuboid_id retina.__variable__ store result score $surfaces retina.__variable__ run data get storage elements_retina:data List
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function elements_retina:__private__/while_loop/3