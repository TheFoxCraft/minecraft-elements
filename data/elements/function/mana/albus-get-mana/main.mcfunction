scoreboard players add @s elements_stage-2_mana_activate_timer_tick 1
execute as @s[scores={elements_stage-2_mana_activate_timer_tick=20..}] run scoreboard players add @s elements_stage-2_mana_activate_timer_sec 1
execute as @s[scores={elements_stage-2_mana_activate_timer_tick=20..}] run scoreboard players remove @s elements_stage-2_mana_activate_timer_tick 20

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=5..}] run function elements:mana/albus-get-mana/particel-provider with entity @s

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=5..100}] run effect give @s resistance 1 255 true

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=0,elements_stage-2_mana_activate_timer_tick=10}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 1 1
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=2,elements_stage-2_mana_activate_timer_tick=10}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Und?"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=6,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Ich glaube ich spüre schon was"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=10,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Oh, ja! Ich übertrage dir meine Kräfte!"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=14,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Aber Achtung, bleib in meiner Nähe, die Verbindung darf nicht reissen!"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=20,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Die Verbindung wird stärker!"}]

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=30,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Du hast das Ding zum Magier!"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=34,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Schau, die Verbindung geht jetzt auch von dir aus!"}]

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=45,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Grün?"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=52,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Das hatte ich noch nie, jetzt geht es sogar von mir aus!"}]

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=63,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"W.. Was passiert jetzt?"}]

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=67,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Die Höheren Mächte scheinen dich auserwählt du haben!"}]

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=71,elements_stage-2_mana_activate_timer_tick=0}] run attribute @s minecraft:scale modifier add mana_activate1 1.000001 add_multiplied_total
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=73,elements_stage-2_mana_activate_timer_tick=0}] run attribute @s minecraft:scale modifier add mana_activate2 1.000001 add_multiplied_total
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=75,elements_stage-2_mana_activate_timer_tick=0}] run attribute @s minecraft:scale modifier add mana_activate3 1.000001 add_multiplied_total

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=78,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Du hast das Ritual fast geschafft!"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=78..86,elements_stage-2_mana_activate_timer_tick=0}] at @s run particle minecraft:explosion_emitter ~ ~3 ~ 7 0 7 0 10

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=85,elements_stage-2_mana_activate_timer_tick=0}] at @s run playsound entity.generic.explode master @s
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=85,elements_stage-2_mana_activate_timer_tick=0}] run attribute @s minecraft:scale modifier remove mana_activate1
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=85,elements_stage-2_mana_activate_timer_tick=0}] run attribute @s minecraft:scale modifier remove mana_activate2
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=85,elements_stage-2_mana_activate_timer_tick=0}] run attribute @s minecraft:scale modifier remove mana_activate3

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=91,elements_stage-2_mana_activate_timer_tick=0}] at @s run playsound ui.toast.challenge_complete master @s

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=87,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @a ["","\n",{"text":"Albus: ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":" HAT DAS RITUAL ZUM MAGIER GESCHAFFT!"}]
execute as @s[scores={elements_stage-2_mana_activate_timer_sec=89,elements_stage-2_mana_activate_timer_tick=0}] run tellraw @s ["","\n",{"text":"Albus: ","color":"yellow"},{"text":"Herzlichen Glückwunsch! Komm zu mir, ich hab was für dich!"}]

execute as @s[scores={elements_stage-2_mana_activate_timer_sec=89,elements_stage-2_mana_activate_timer_tick=0}] run scoreboard players set @s elements_villager_stage-2_mana_level 2