execute as @a[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_tick 1

execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_tick=..-1}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_sec 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_tick=..-1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_tick 20


execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_sec=..-1}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_min 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_sec=..-1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_sec 60


execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_min=..-1}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_h 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_min=..-1}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_min 60


execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_h=-1}] run scoreboard players set @s elements_custom-items_shop_foraging-frucht_timer_h 0


execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_tick=20..}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_sec 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_tick=20..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_tick 20

execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_sec=60..}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_min 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_sec=60..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_sec 60

execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_min=60..}] run scoreboard players add @s elements_custom-items_shop_foraging-frucht_timer_h 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_min=60..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_timer_min 60


execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_h=0,elements_custom-items_shop_foraging-frucht_timer_min=5,elements_custom-items_shop_foraging-frucht_timer_sec=0,elements_custom-items_shop_foraging-frucht_timer_tick=0,elements_custom-items_shop_foraging-frucht_enable=1}] run tellraw @s [{"text": "Server: ","color": "yellow"},{"text": "Dein Foraging-XP Boost dauert nur noch 5 Minuten!","color": "red"}]
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_h=0,elements_custom-items_shop_foraging-frucht_timer_min=0,elements_custom-items_shop_foraging-frucht_timer_sec=0,elements_custom-items_shop_foraging-frucht_timer_tick=0,elements_custom-items_shop_foraging-frucht_enable=1}] run tellraw @s [{"text": "Server: ","color": "yellow"},{"text": "Dein Foraging-XP Boost ist ausgelaufen!","color": "red"}]
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_h=0,elements_custom-items_shop_foraging-frucht_timer_min=0,elements_custom-items_shop_foraging-frucht_timer_sec=0,elements_custom-items_shop_foraging-frucht_timer_tick=0,elements_custom-items_shop_foraging-frucht_enable=1}] run scoreboard players set @s elements_custom-items_shop_foraging-frucht_enable 0

execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_h=1..,elements_custom-items_shop_foraging-frucht_enable=0}] run scoreboard players set @s elements_custom-items_shop_foraging-frucht_enable 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_min=1..,elements_custom-items_shop_foraging-frucht_enable=0}] run scoreboard players set @s elements_custom-items_shop_foraging-frucht_enable 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_sec=1..,elements_custom-items_shop_foraging-frucht_enable=0}] run scoreboard players set @s elements_custom-items_shop_foraging-frucht_enable 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_timer_tick=1..,elements_custom-items_shop_foraging-frucht_enable=0}] run scoreboard players set @s elements_custom-items_shop_foraging-frucht_enable 1