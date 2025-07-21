
execute if entity @s[tag=menu.option1] run say Items selected
execute if entity @s[tag=menu.option2] run say Skills selected
execute if entity @s[tag=menu.option3] as @n[tag=this.character] run function ex:character/encounter/attack
execute if entity @s[tag=menu.option4] run say Aim selected