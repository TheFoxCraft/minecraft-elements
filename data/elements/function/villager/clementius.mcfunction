execute as @e[type=minecraft:interaction,tag=clementius] at @s on target run tag @s add clementius
execute as @a[tag=clementius] run scoreboard players set @s elements_clementius_clicked 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=clementius,distance=..4] run data remove entity @s interaction
tag @a remove clementius


#200





execute as @a[scores={elements_clementius_level=0,elements_clementius_clicked=1}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"gold"},"\n",{"text":"Hallo ","color":"dark_green"},{"selector":"@s","color":"gold"},{"text":",","color":"dark_green"},"\n",{"text":"Ich bin Clementius und habe für dich eine Menge sehr nützlicher Enderchest-Upgrades für dich","color":"dark_green"},"\n",{"text":"Diese kannst du nach und nach bei Mir Kaufen!","color":"dark_green"},"\n","\n",{"text":"Das klingt sehr Spannend, hast du schon was für mich?","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 18"}}]
execute as @a[scores={elements_clementius_level=0,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @a[scores={just-ignore=18,elements_clementius_level=0}] run scoreboard players set @s elements_clementius_level 1
execute as @a[scores={just-ignore=18}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=1}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"gold"},"\n",{"text":"Ja tatsächlich!","color":"dark_green"},"\n",{"text":"Für 32 Compressed Cobblestone und 100 Level kannst du dir ein Auto-Compactor-Modul für Stein Kaufen!","color":"dark_green"},"\n","\n",{"text":"Alles Klar, bin bald wieder da!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 19"}}]
execute as @a[scores={elements_clementius_level=1}] run scoreboard players set @s elements_clementius_level 2
execute as @a[scores={just-ignore=19,elements_clementius_level=2}] run scoreboard players set @s elements_clementius_level 3
execute as @a[scores={just-ignore=19}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=3,elements_clementius_clicked=1}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"gold"},"\n",{"text":"Da bist du ja wieder! Hast du alles dabei?","color":"dark_green"},"\n",{"text":"Fagen wir mit den 32 Compressed Cobblestone an!","color":"dark_green"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 20"}}]
execute as @a[scores={elements_clementius_level=3,elements_clementius_clicked=1}] run scoreboard players set @s elements_clementius_clicked 0
execute as @a[scores={just-ignore=20,elements_clementius_level=3,elements_inv_compressed_cobblestone=..31}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast zu wenig Compressed Cobblestone!","color":"dark_green"}]
execute as @a[scores={just-ignore=20,elements_clementius_level=3,elements_inv_compressed_cobblestone=32..}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Vielen Dank! Jetzt noch die 100 Level!","color":"dark_green"},"\n","\n",{"text":"Ja, die hab ich auch","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 21"}}]
execute as @a[scores={just-ignore=20,elements_clementius_level=3,elements_inv_compressed_cobblestone=32..}] run scoreboard players set @s elements_clementius_level 4
execute as @a[scores={just-ignore=20,elements_clementius_level=4,elements_inv_compressed_cobblestone=32..}] run clear @s cobbled_deepslate[custom_model_data=1] 32
execute as @a[scores={just-ignore=20,elements_clementius_level=4}] run scoreboard players set @s elements_clementius_level 5
execute as @a[scores={just-ignore=20}] run scoreboard players set @s just-ignore 0
execute as @a[scores={just-ignore=21,elements_clementius_level=5}] run scoreboard players set @s elements_clementius_level 6
execute as @a[scores={just-ignore=21}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=6}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"gold"},"\n",{"text":"Hast du die Level?","color":"dark_green"},"\n","\n",{"text":"Ja!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 22"}}]
execute as @a[scores={elements_clementius_level=6}] run scoreboard players set @s elements_clementius_level 7
execute as @a[scores={just-ignore=22,elements_clementius_level=7,elements_mainlevel=..99}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Du hast zu wenig Level!","color":"dark_green"}]
execute as @a[scores={just-ignore=22,elements_clementius_level=7,elements_mainlevel=100..}] run tellraw @s ["",{"text":"Clementius:","underlined":true,"color":"dark_red"},"\n",{"text":"Sehr gut!","color":"dark_green"},"\n",{"text":"Jetzt habe ich deiner Enderchest den Autocompactor für Cobblestone hinzugefügt!","color":"dark_green"},"\n","\n",{"text":"Danke, schau ich mir gleich mal an!","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger just-ignore set 23"}}]
execute as @a[scores={just-ignore=22,elements_clementius_level=7,elements_mainlevel=100..}] run scoreboard players set @s elements_clementius_level 8
execute as @a[scores={just-ignore=22,elements_clementius_level=8,elements_mainlevel=100..}] run xp add @s -100 levels
execute as @a[scores={just-ignore=22,elements_clementius_level=8}] run scoreboard players set @s elements_clementius_level 9
execute as @a[scores={just-ignore=22}] run scoreboard players set @s just-ignore 0
execute as @a[scores={just-ignore=23,elements_clementius_level=9}] run scoreboard players set @s elements_clementius_level 10
execute as @a[scores={just-ignore=23}] run scoreboard players set @s just-ignore 0

execute as @a[scores={elements_clementius_level=10}] run scoreboard players set @s elements_enderchest_level_autocompact 1
execute as @a[scores={elements_clementius_level=10}] run item replace entity @s enderchest.0 with piston[custom_name='{"color":"gray","text":"Auto-Compactor"}',lore=['{"color":"aqua","text":"Öffnet Menü für Auto-Compactor"}'],custom_model_data=1] 1
execute as @a[scores={elements_clementius_level=10}] run scoreboard players set @s elements_clementius_level 11


