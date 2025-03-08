function elements_retina:math/sway_heave_surge/find
function elements_retina:math/sway_heave_surge/apply
function elements_retina:traverse/setup
scoreboard players add $j retina.__variable__ 10
execute if score $j retina.__variable__ < $vertical_count retina.__variable__ run function elements_retina:__private__/for_loop/1