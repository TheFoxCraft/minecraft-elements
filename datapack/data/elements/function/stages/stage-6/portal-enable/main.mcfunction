execute as @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}}] at @s if entity @s[y=320,dy=2,nbt={OnGround:1b}] if entity @n[type=chicken,distance=..0.3,nbt={OnGround:1b}] run particle cloud ~ ~0.3 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}}] at @s if entity @s[y=320,dy=2,nbt={OnGround:1b}] if entity @n[type=chicken,distance=..0.3,nbt={OnGround:1b}] run scoreboard players add @s elements_stage_6_portal_enable_chocolate_timer 1


execute as @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}}] if score @s elements_stage_6_portal_enable_chocolate_timer matches 100 at @s run tag @n[type=chicken,distance=..0.3,nbt={OnGround:1b}] add portal_enable_stage-6_chicken
execute as @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}}] if score @s elements_stage_6_portal_enable_chocolate_timer matches 100 at @s run effect give @n[type=chicken,distance=..0.3,nbt={OnGround:1b}] levitation infinite 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}}] if score @s elements_stage_6_portal_enable_chocolate_timer matches 100 at @s run kill @s


execute as @e[type=chicken,tag=portal_enable_stage-6_chicken] at @s if entity @s[y=330,dy=1] run summon parrot ~ ~ ~ {Tags:["portal_enable_stage-6_parrot"]}
execute as @e[type=chicken,tag=portal_enable_stage-6_chicken] at @s if entity @s[y=330,dy=1] as @a[distance=..20] run playsound entity.zombie.infect master @s ~ ~ ~ 100
execute as @e[type=chicken,tag=portal_enable_stage-6_chicken] at @s if entity @s[y=330,dy=1] run particle dust{color:10617087,scale:2} ~ ~ ~ 1 1 1 2 1000
execute as @e[type=chicken,tag=portal_enable_stage-6_chicken] at @s if entity @s[y=330,dy=1] run tp @s ~ -130 ~


execute as @e[type=parrot,tag=portal_enable_stage-6_parrot] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",components:{"minecraft:custom_model_data":3}}},distance=..0.5,nbt={OnGround:1b}] run function elements:stages/stage-6/portal-enable/final