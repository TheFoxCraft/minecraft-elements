#start-building #3

execute if score .server elements_abgabe_start_boden1 matches 3 in elements:hub run summon interaction -2.5 100.00 -16.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_start_boden1"]}
execute if score .server elements_abgabe_start_boden1 matches 3 in elements:hub run summon text_display -2.5 101.50 -16.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_start_boden1","abgabe_start_boden1_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_start_boden1_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_start_boden1_goal"}}]'}
execute if score .server elements_abgabe_start_boden1 matches 3 in elements:hub run summon block_display -2.5 102.00 -16.5 {billboard:"center",Tags:["abgabe_start_boden1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:cobbled_deepslate"}}
execute if score .server elements_abgabe_start_boden1 matches 3 in elements:hub run setblock -3 100 -17 reinforced_deepslate
execute if score .server elements_abgabe_start_boden1 matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_start_boden1_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_start_boden1 matches 3 in elements:hub run scoreboard players set .server elements_abgabe_start_boden1 1
