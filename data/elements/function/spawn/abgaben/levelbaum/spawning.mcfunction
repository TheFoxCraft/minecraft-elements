#levelbaum

execute if score #server elements_abgabe_other_levelbaum matches 3 in elements:hub run summon interaction 0.5 100.00 11.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_other_levelbaum"]}
execute if score #server elements_abgabe_other_levelbaum matches 3 in elements:hub run summon text_display 0.5 101.50 11.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_other_levelbaum","abgabe_other_levelbaum_refresh"],text:'[{"color":"blue","score":{"name":"#server","objective":"elements_abgabe_other_levelbaum_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":"#server","objective":"elements_abgabe_other_levelbaum_goal"}}]'}
execute if score #server elements_abgabe_other_levelbaum matches 3 in elements:hub run summon block_display 0.5 102.00 11.5 {billboard:"center",Tags:["abgabe_other_levelbaum"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:oak_wood"}}
execute if score #server elements_abgabe_other_levelbaum matches 3 in elements:hub run setblock 0 100 11 reinforced_deepslate
execute if score #server elements_abgabe_other_levelbaum matches 3 in elements:hub run scoreboard players operation #server elements_abgabe_other_levelbaum_abgabe-mode = #server elements_abgabe_general_abgabe-mode
execute if score #server elements_abgabe_other_levelbaum matches 3 in elements:hub run scoreboard players set #server elements_abgabe_other_levelbaum 1
