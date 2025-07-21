execute unless score @s ex.generic.id matches -2147483648..2147483647 run function ex:player/get_id
scoreboard players remove @s[scores={ex.player.input_cooldown=1..}] ex.player.input_cooldown 1

tag @s add this.player
execute as @e[type=item_display,tag=character] if score @s ex.generic.id = @p[tag=this.player] ex.generic.id run tag @s add this.character
execute as @e[type=block_display,tag=character.camera] if score @s ex.generic.id = @p[tag=this.player] ex.generic.id run tag @s add this.camera
execute as @e[type=block_display,tag=menu] if score @s ex.generic.id = @p[tag=this.player] ex.generic.id run tag @s add these.menu


execute if entity @s[gamemode=spectator] run function ex:player/spectator


tag @e[tag=these.menu] remove these.menu
tag @e[tag=this.camera] remove this.camera
tag @e[tag=this.character] remove this.character
tag @s remove this.player