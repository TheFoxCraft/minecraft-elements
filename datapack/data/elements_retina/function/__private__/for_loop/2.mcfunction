function elements_retina:traverse/setup
scoreboard players add $k retina.__variable__ 1
execute if score $k retina.__variable__ < $centered_count retina.__variable__ run function elements_retina:__private__/for_loop/2