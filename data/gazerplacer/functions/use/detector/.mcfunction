#> gazerplacer:use/detector/
# @api
# @user

#> private
# @private
    #declare score_holder $Validate

# validate
    scoreboard players set $Validate Ashen.GazerPlacer.Temporary 1
    execute unless entity 1-0-ce2-0-1 run scoreboard players set $Validate Ashen.GazerPlacer.Temporary 0
    execute unless entity 1-0-ce2-0-2 run scoreboard players set $Validate Ashen.GazerPlacer.Temporary 0
    execute unless entity 1-0-ce2-0-3 run scoreboard players set $Validate Ashen.GazerPlacer.Temporary 0
    execute unless score $Validate Ashen.GazerPlacer.Temporary matches 1 run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"text": "Failed to validate detector marker. Please reload."}]

# main process
    execute if score $Validate Ashen.GazerPlacer.Temporary matches 1 run function gazerplacer:use/detector/main

# reset
    scoreboard players reset $Validate Ashen.GazerPlacer.Temporary
    execute in gazerplacer:clipboard run tp 1-0-ce2-0-1 0 0 0 0 0
    execute in gazerplacer:clipboard run tp 1-0-ce2-0-2 0 0 0 0 0
    execute in gazerplacer:clipboard run tp 1-0-ce2-0-3 0 0 0 0 0
