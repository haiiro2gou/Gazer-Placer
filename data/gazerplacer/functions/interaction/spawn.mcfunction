#> gazerplacer:interaction/spawn
# @within function gazerplacer:tick/player

#> private
# @private
    #declare score_holder $Exists
    #declare tag Ashen.GazerPlacer.InitInteraction

# check
    execute store result score $Exists Ashen.Global.Temporary as @e[tag=Ashen.GazerPlacer.Interaction] at @s if score @s Ashen.GazerPlacer.Detector = @e[tag=this,limit=1] Ashen.Global.UserID

# spawn
    execute unless score $Exists Ashen.Global.Temporary matches 1.. run summon interaction ~ ~1.2 ~ {Tags:["Ashen.GazerPlacer.Interaction","Ashen.GazerPlacer.InitInteraction"],width: 1.0f,height: 1.0f}
    execute as @e[tag=Ashen.GazerPlacer.InitInteraction,limit=1] run scoreboard players operation @s Ashen.GazerPlacer.Detector = @e[tag=this,limit=1] Ashen.Global.UserID
    execute as @e[tag=Ashen.GazerPlacer.InitInteraction,limit=1] run tag @s remove Ashen.GazerPlacer.InitInteraction

# reset
    scoreboard players reset $Exists Ashen.Global.Temporary
