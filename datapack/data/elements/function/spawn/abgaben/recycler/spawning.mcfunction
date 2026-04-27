#recycler (community-hub)

execute if score .server elements_abgabe_other_recycler matches 3 in elements:hub run summon interaction 0.5 100.00 -58.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_other_recycler"]}
execute if score .server elements_abgabe_other_recycler matches 3 in elements:hub run summon text_display 0.5 101.50 -58.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_other_recycler","abgabe_other_recycler_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_other_recycler_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_other_recycler_goal"}}]'}
execute if score .server elements_abgabe_other_recycler matches 3 in elements:hub run summon item_display 0.5 102.25 -58.5 {billboard:"center",Tags:["abgabe_other_recycler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"experience_bottle"}}
execute if score .server elements_abgabe_other_recycler matches 3 in elements:hub run setblock 0 100 -59 reinforced_deepslate
execute if score .server elements_abgabe_other_recycler matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_other_recycler_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_other_recycler matches 3 in elements:hub run scoreboard players set .server elements_abgabe_other_recycler 1

