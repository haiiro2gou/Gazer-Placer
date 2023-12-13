#> gazerplacer:interaction/interaction/
# @within function gazerplacer:tick/player

#> private
# @private
    #declare score_holder #GazerPlacer.Interaction.Match

# check data
    execute store result score #GazerPlacer.Interaction.Match Ashen.Global.Temporary run data modify entity @s interaction.player set from entity @e[tag=this,limit=1] UUID

# exec
    execute if score #GazerPlacer.Interaction.Match Ashen.Global.Temporary matches 0 as @a[gamemode=!adventure,gamemode=!spectator,tag=this,limit=1] at @s run function gazerplacer:detector/
    execute if score #GazerPlacer.Interaction.Match Ashen.Global.Temporary matches 0 as @a[gamemode=!creative,gamemode=!survival,tag=this,limit=1] run tellraw @s [{"nbt":"Ashen.Global.Prefix.FAILED","storage":"global"},{"translate":"Ashen.GazerPlacer.Failed","fallback":"Blocks cannot be placed in this gamemode!"}]

# reset
    scoreboard players reset #GazerPlacer.Interaction.Match Ashen.Global.Temporary
    data remove entity @s interaction
