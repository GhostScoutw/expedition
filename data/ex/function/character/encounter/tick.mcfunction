rotate @s facing entity @n[tag=encounter_point]

execute unless entity @n[tag=mid_attack] run tp @n[tag=this.camera] ^-1.5 ^2 ^-1 facing entity @n[tag=encounter_point]
execute if entity @n[tag=mid_attack] run tp @n[tag=this.camera] ^-4 ^5 ^3 facing entity @n[tag=encounter_point]

scoreboard players remove @s[scores={ex.player.move_duration=1..}] ex.player.move_duration 1

#TEMPORARY
execute if score @s ex.player.move_duration matches 1 run kill @n[tag=encounter_point]
execute if score @s ex.player.move_duration matches 1 run function ex:menu/combat/main/summon