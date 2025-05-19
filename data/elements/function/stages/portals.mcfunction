# Stage 1
execute as @a[predicate=elements:is_in_hub] at @s if entity @e[distance=..20,type=text_display,nbt={Tags:["stage-1_portal_status"]}] run function elements:stages/portals/stage_1

# Stage 2
execute as @a[predicate=elements:is_in_hub] at @s if entity @e[distance=..20,type=text_display,nbt={Tags:["stage-2_portal_status"]}] run function elements:stages/portals/stage_2

# Stage 3
execute as @a[predicate=elements:is_in_hub] at @s if entity @e[distance=..20,type=text_display,nbt={Tags:["stage-3_portal_status"]}] run function elements:stages/portals/stage_3

# Stage 4
execute as @a[predicate=elements:is_in_hub] at @s if entity @e[distance=..20,type=text_display,nbt={Tags:["stage-4_portal_status"]}] run function elements:stages/portals/stage_4

# Stage 5
execute as @a[predicate=elements:is_in_hub] at @s if entity @e[distance=..20,type=text_display,nbt={Tags:["stage-5_portal_status"]}] run function elements:stages/portals/stage_5