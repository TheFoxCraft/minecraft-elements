data remove storage elements_retina:data Surfaces
data modify storage elements_retina:data Surfaces set value {Top:[],Bottom:[],West:[],East:[],North:[],South:[]}
function elements_retina:check/block/get_hitbox
execute if data storage elements_retina:data Surfaces run function elements_retina:find_closest_surface/main
execute if score $contact retina.__variable__ matches 1.. run scoreboard players operation $block_distance retina.__variable__ = $min_distance_to_surface retina.__variable__
scoreboard players operation $hit_block retina.__variable__ = $contact retina.__variable__