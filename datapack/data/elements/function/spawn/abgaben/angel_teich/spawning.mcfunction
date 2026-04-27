#angel-teich (community-hub)

execute if score .server elements_abgabe_other_angel-teich matches 3 in elements:hub run summon interaction 6.5 100.00 -31.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_other_angel-teich"]}
execute if score .server elements_abgabe_other_angel-teich matches 3 in elements:hub run summon text_display 6.5 101.50 -31.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_other_angel-teich","abgabe_other_angel-teich_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_other_angel-teich_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_other_angel-teich_goal"}}]'}
execute if score .server elements_abgabe_other_angel-teich matches 3 in elements:hub run summon item_display 6.5 102.25 -31.5 {billboard:"center",Tags:["abgabe_other_angel-teich"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"cod"}}
execute if score .server elements_abgabe_other_angel-teich matches 3 in elements:hub run setblock 6 100 -32 reinforced_deepslate
execute if score .server elements_abgabe_other_angel-teich matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_other_angel-teich_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_other_angel-teich matches 3 in elements:hub run scoreboard players set .server elements_abgabe_other_angel-teich 1

