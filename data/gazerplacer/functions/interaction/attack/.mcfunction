#> gazerplacer:interaction/attack/
# @within function gazerplacer:tick/player

#> private
# @private
    #declare score_holder #GazerPlacer.Attack.Match

# check data
    execute store result score #GazerPlacer.Attack.Match Ashen.Global.Temporary run data modify entity @s attack.player set from entity @e[tag=this,limit=1] UUID

# exec
    execute if score #GazerPlacer.Attack.Match Ashen.Global.Temporary matches 0 as @a[tag=this,limit=1] run function gazerplacer:interaction/attack/main

# reset
    scoreboard players reset #GazerPlacer.Attack.Match Ashen.Global.Temporary
    data remove entity @s attack
