scoreboard players operation $distance_traveled_squared_X retina.__variable__ = $step_X retina.__variable__
scoreboard players operation $distance_traveled_squared_X retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $distance_traveled_squared_Y retina.__variable__ = $step_Y retina.__variable__
scoreboard players operation $distance_traveled_squared_Y retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $distance_traveled_squared_Z retina.__variable__ = $step_Z retina.__variable__
scoreboard players operation $distance_traveled_squared_Z retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $step retina.__variable__ = $distance_traveled_squared_X retina.__variable__
scoreboard players operation $step retina.__variable__ += $distance_traveled_squared_Y retina.__variable__
scoreboard players operation $step retina.__variable__ += $distance_traveled_squared_Z retina.__variable__
scoreboard players set $check_for_head retina.__variable__ 0
execute if data storage elements_retina:input {TargetBlocks:true} run function elements_retina:check/block/main
execute if data storage elements_retina:input {TargetEntities:true} run function elements_retina:check/entity/main
execute if score $step retina.__variable__ >= $max_depth retina.__variable__ if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Failed to find anything within ","italic":true,"color":"light_purple","type":"text"},{"score":{"name":"$step","objective":"retina.__variable__"},"color":"light_purple","type":"score"},{"text":" blocks. End coordinates: ","color":"light_purple"},{"translate":"elements.main.other.[","bold":true,"color":"light_purple","type":"text"},{"score":{"name":"$int_X","objective":"retina.__variable__"},"color":"light_purple","type":"score"},{"text":", ","color":"light_purple"},{"score":{"name":"$int_Y","objective":"retina.__variable__"},"color":"light_purple","type":"score"},{"text":", ","color":"light_purple"},{"score":{"name":"$int_Z","objective":"retina.__variable__"},"color":"light_purple","type":"score"},{"text":"]","color":"light_purple"}]
execute if score $step retina.__variable__ < $max_depth retina.__variable__ if score $hit_block retina.__variable__ matches 0 if score $hit_entity retina.__variable__ matches 0 run function elements_retina:traverse/loop