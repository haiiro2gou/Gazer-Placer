#> gazerplacer:use/detector/
# @api
# @user

#> private
# @private
    #declare score_holder $Validate

# validate
    scoreboard players set $Validate Ashen.GazerPlacer.Temporary 1
    execute unless entity 1-0-ce2-0-1 run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.1"], UUID: [I; 1, 3298, 0, 1]}
    execute unless entity 1-0-ce2-0-2 run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.2"], UUID: [I; 1, 3298, 0, 2]}
    execute unless entity 1-0-ce2-0-3 run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.3"], UUID: [I; 1, 3298, 0, 3]}
    execute unless score $Validate Ashen.GazerPlacer.Temporary matches 1 run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"text": "Failed to validate detector marker. Please reload."}]

# main process
    execute if score $Validate Ashen.GazerPlacer.Temporary matches 1 run function gazerplacer:use/detector/main

# reset
    scoreboard players reset $Validate Ashen.GazerPlacer.Temporary
    kill @e[tag=Ashen.GazerPlacer.Detection.Marker]
