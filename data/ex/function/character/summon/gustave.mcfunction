tag @s add player
execute rotated ~ 0 run function animated_java:gustave/summon {args:{}}

summon block_display ~ ~ ~ {Tags:["character.camera"],teleport_duration:2}

scoreboard players operation @n[type=item_display,tag=aj.gustave.root,tag=!character] ex.generic.id = @s ex.generic.id

scoreboard players operation @e[type=marker,tag=weapon.tip,tag=!synced] ex.generic.id = @s ex.generic.id
scoreboard players operation @e[type=block_display,tag=character.camera,tag=!synced] ex.generic.id = @s ex.generic.id
scoreboard players operation @e[type=text_display,tag=character.nameplate,tag=!synced] ex.generic.id = @s ex.generic.id

execute as @n[type=item_display,tag=aj.gustave.root,tag=!character] run function animated_java:gustave/animations/idle.turn/play

execute as @n[type=item_display,tag=aj.gustave.root,tag=!character] run tag @s add character
execute as @e[type=text_display,tag=character.nameplate,tag=!synced] run tag @s add synced
execute as @e[type=marker,tag=weapon.tip,tag=!synced] run tag @s add synced
execute as @e[type=block_display,tag=character.camera,tag=!synced] run tag @s add synced
tag @s remove player