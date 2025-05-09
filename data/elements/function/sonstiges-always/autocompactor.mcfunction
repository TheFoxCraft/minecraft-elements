execute as @s[scores={elements_autocompactor=1,elements_inv_cobblestone=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/stone"}
execute as @s[scores={elements_autocompactor=1,elements_inv_cobblestone=64..}] run clear @s cobblestone 64
execute as @s[scores={elements_autocompactor=1,elements_inv_basalt=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/stone"}
execute as @s[scores={elements_autocompactor=1,elements_inv_basalt=64..}] run clear @s basalt 64
execute as @s[scores={elements_autocompactor=1,elements_inv_stone=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/stone"}
execute as @s[scores={elements_autocompactor=1,elements_inv_stone=64..}] run clear @s stone 64

execute as @s[scores={elements_autocompactor=2,elements_inv_sprucelog=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/wood"}
execute as @s[scores={elements_autocompactor=2,elements_inv_sprucelog=64..}] run clear @s spruce_log 64

execute as @s[scores={elements_autocompactor=3,elements_inv_crimson_vines=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/crimson_vines"}
execute as @s[scores={elements_autocompactor=3,elements_inv_crimson_vines=64..}] run clear @s crimson_roots[custom_model_data=1] 64

execute as @s[scores={elements_autocompactor=4,elements_inv_sweet_berries=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/sweet_berries"}
execute as @s[scores={elements_autocompactor=4,elements_inv_sweet_berries=64..}] run clear @s sweet_berries 64

execute as @s[scores={elements_autocompactor=5,elements_inv_melon=64..}] run function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/melon"}
execute as @s[scores={elements_autocompactor=5,elements_inv_melon=64..}] run clear @s melon 64
