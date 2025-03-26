execute as @a[scores={elements_custom-items_shop_water-breathing_enable=1}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_tick 1

execute as @a[scores={elements_custom-items_shop_water-breathing_timer_tick=..-1}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_sec 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_tick=..-1}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_tick 20


execute as @a[scores={elements_custom-items_shop_water-breathing_timer_sec=..-1}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_min 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_sec=..-1}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_sec 60


execute as @a[scores={elements_custom-items_shop_water-breathing_timer_min=..-1}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_h 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_min=..-1}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_min 60


execute as @a[scores={elements_custom-items_shop_water-breathing_timer_h=-1}] run scoreboard players set @s elements_custom-items_shop_water-breathing_timer_h 0


execute as @a[scores={elements_custom-items_shop_water-breathing_timer_tick=20..}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_sec 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_tick=20..}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_tick 20

execute as @a[scores={elements_custom-items_shop_water-breathing_timer_sec=60..}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_min 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_sec=60..}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_sec 60

execute as @a[scores={elements_custom-items_shop_water-breathing_timer_min=60..}] run scoreboard players add @s elements_custom-items_shop_water-breathing_timer_h 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_min=60..}] run scoreboard players remove @s elements_custom-items_shop_water-breathing_timer_min 60


execute as @a[scores={elements_custom-items_shop_water-breathing_timer_h=0,elements_custom-items_shop_water-breathing_timer_min=5,elements_custom-items_shop_water-breathing_timer_sec=0,elements_custom-items_shop_water-breathing_timer_tick=0,elements_custom-items_shop_water-breathing_enable=1}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},{"text": "Dein Wasseratmungs-Trank dauert nur noch 5 Minuten!","color":"red"}]
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_h=0,elements_custom-items_shop_water-breathing_timer_min=0,elements_custom-items_shop_water-breathing_timer_sec=0,elements_custom-items_shop_water-breathing_timer_tick=0,elements_custom-items_shop_water-breathing_enable=1}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},{"text": "Dein Wasseratmungs-Trank ist ausgelaufen!","color":"red"}]
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_h=0,elements_custom-items_shop_water-breathing_timer_min=0,elements_custom-items_shop_water-breathing_timer_sec=0,elements_custom-items_shop_water-breathing_timer_tick=0,elements_custom-items_shop_water-breathing_enable=1}] run scoreboard players set @s elements_custom-items_shop_water-breathing_enable 0

execute as @a[scores={elements_custom-items_shop_water-breathing_timer_h=1..,elements_custom-items_shop_water-breathing_enable=0}] run scoreboard players set @s elements_custom-items_shop_water-breathing_enable 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_min=1..,elements_custom-items_shop_water-breathing_enable=0}] run scoreboard players set @s elements_custom-items_shop_water-breathing_enable 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_sec=1..,elements_custom-items_shop_water-breathing_enable=0}] run scoreboard players set @s elements_custom-items_shop_water-breathing_enable 1
execute as @a[scores={elements_custom-items_shop_water-breathing_timer_tick=1..,elements_custom-items_shop_water-breathing_enable=0}] run scoreboard players set @s elements_custom-items_shop_water-breathing_enable 1