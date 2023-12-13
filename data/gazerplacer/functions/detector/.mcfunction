#> gazerplacer:detector/
# @api
# @user

# validate
    execute unless entity 1-0-ce2-0-1 run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.1"], UUID: [I; 1, 3298, 0, 1]}
    execute unless entity 1-0-ce2-0-2 run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.2"], UUID: [I; 1, 3298, 0, 2]}
    execute unless entity 1-0-ce2-0-3 run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.3"], UUID: [I; 1, 3298, 0, 3]}

# main process
    function gazerplacer:detector/main

# reset
    kill @e[tag=Ashen.GazerPlacer.Detector.Marker]
