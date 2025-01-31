#start-building #2

execute if score #server elements_abgabe_start_mitte matches 3 in elements:hub run summon interaction 2.5 99.00 -1.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_start_mitte"]}
execute if score #server elements_abgabe_start_mitte matches 3 in elements:hub run summon text_display 2.5 100.50 -1.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_start_mitte","abgabe_start_mitte_refresh"],text:'[{"color":"blue","score":{"name":"#server","objective":"elements_abgabe_start_mitte_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":"#server","objective":"elements_abgabe_start_mitte_goal"}}]'}
execute if score #server elements_abgabe_start_mitte matches 3 in elements:hub run summon block_display 2.5 101.00 -1.5 {billboard:"center",Tags:["abgabe_start_mitte"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:cobbled_deepslate"}}
execute if score #server elements_abgabe_start_mitte matches 3 in elements:hub run setblock 2 99 -2 reinforced_deepslate
execute if score #server elements_abgabe_start_mitte matches 3 in elements:hub run scoreboard players operation #server elements_abgabe_start_mitte_abgabe-mode = #server elements_abgabe_general_abgabe-mode
execute if score #server elements_abgabe_start_mitte matches 3 in elements:hub run scoreboard players set #server elements_abgabe_start_mitte 1
