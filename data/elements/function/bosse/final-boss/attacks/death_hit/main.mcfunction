tellraw @a[distance=0..] ["",{"text": "[Warden] Server: ","color": "yellow"},{"text": "Der Warden macht sich zu einem mächtigen Angriff bereit! Renn um dein Leben!","color": "red"}]
title @a[distance=0..] reset
title @a[distance=0..] title {"text": "Achtung!","color": "red"}
title @a[distance=0..] subtitle {"text": "Renn um dein Leben!","color": "red"}

schedule function elements:bosse/final-boss/attacks/death_hit/hit 3s