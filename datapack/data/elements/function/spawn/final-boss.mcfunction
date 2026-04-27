

execute as @a at @s if entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] run scoreboard players add @s elements_final-boss_aufzug_cooldown 1
execute as @a at @s if entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run scoreboard players add @s elements_final-boss_aufzug_cooldown 1
execute as @a[scores={elements_final-boss_aufzug_cooldown=1..}] at @s unless entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] unless entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run title @s subtitle "abgebrochen"
execute as @a[scores={elements_final-boss_aufzug_cooldown=1..}] at @s unless entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] unless entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run title @s subtitle "abgebrochen"
execute as @a at @s unless entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] unless entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run scoreboard players set @s elements_final-boss_aufzug_cooldown 0
execute as @a at @s unless entity @s[x=-1,y=99,z=93,dx=3,dy=3,dz=3] unless entity @s[x=-1,y=49,z=93,dx=3,dy=3,dz=3] run scoreboard players set @s elements_final-boss_aufzug_cooldown 0

execute as @a[scores={elements_final-boss_aufzug_cooldown=1..}] run function elements:spawn/final-boss/aufzug_timer



# regeneration im hub

execute if score .server elements_projectFinished matches 1 run effect give @a[nbt={Dimension:"elements:hub"}] regeneration 5 3 true