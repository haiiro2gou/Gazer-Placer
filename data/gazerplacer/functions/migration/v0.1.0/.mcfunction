#> gazerplacer:migration/v0.1.0/
#
# v0.0.1 -> v0.1.0
#
# @within function gazerplacer:migration/

# Migration
    data modify storage global Ashen.GazerPlacer.Version set value "v0.1.0"

#> from: 2d70b4b3214a06540e34d0ea2ff9c3f28c0cef85
# @private
    scoreboard objectives remove Ashen.GazerPlacer.Const
    scoreboard objectives remove Ashen.GazerPlacer.Temporary
    scoreboard objectives remove Ashen.GazerPlacer.UserID
    scoreboard objectives remove Ashen.GazerPlacer.FirstJoin
    scoreboard objectives add Ashen.GazerPlacer.Detector dummy {"translate": "Ashen.GazerPlacer.ScoreDetector", "fallback": "Gazer Placer: Block Detector"}
    data remove storage indexstorage:player {}
    data remove storage indexstorage:exec {}
    execute in gazerplacer:clipboard run forceload remove 0 0
