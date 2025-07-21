function ex:character/encounter/set_idle
scoreboard players set @p[tag=this.player] ex.player.input_cooldown 10

execute as @p[tag=this.player] at @s run function ex:menu/combat/main/summon