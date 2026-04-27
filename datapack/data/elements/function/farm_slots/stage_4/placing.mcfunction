execute as @s at @s run function elements_retina:traverse/setup
execute as @s run data modify storage elements_farmslots_stage_4 x set from storage elements_retina:output TargetedBlock[0]
execute as @s run data modify storage elements_farmslots_stage_4 y set from storage elements_retina:output TargetedBlock[1]
execute as @s run data modify storage elements_farmslots_stage_4 z set from storage elements_retina:output TargetedBlock[2]

execute as @s at @s run function elements:farm_slots/stage_4/init_block with storage elements_farmslots_stage_4
execute as @s run scoreboard players remove @s elements_farm-slots_stage-4_placed 1
