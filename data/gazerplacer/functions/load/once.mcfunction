#> gazerplacer:load/once
# @within function gazerplacer:load/main

#> version
    data modify storage global Ashen.GazerPlacer.Version set value "v0.1.0"

    tellraw @a [{"text": "================================", "color": "gold"}]
    tellraw @a [{"translate": "Ashen.GazerPlacer.Version", "fallback": "\u00A7aGazer Placer %s", "with": [{"nbt": "Ashen.GazerPlacer.Version", "storage": "minecraft:global", "color": "dark_gray"}]}, {"text": " "}, {"translate": "Ashen.GazerPlacer.Developer", "fallback": "by haiiro2gou", "color": "gray"}]
    tellraw @a [{"text": ""}]
    tellraw @a [{"translate": "Ashen.GazerPlacer.Install", "fallback": "Thanks for Installation!"}]
    tellraw @a [{"text": "================================", "color": "gold"}]

#> scoreboard
    #> detector
    # @within function
    #   gazerplacer:tick/*
    #   gazerplacer:detector/**
        scoreboard objectives add Ashen.GazerPlacer.Detector dummy {"translate": "Ashen.GazerPlacer.ScoreDetector", "fallback": "Gazer Placer: Block Detector"}

    #> trigger
    # @within function
    #   gazerplacer:config/**
    #   gazerplacer:tick/player
        scoreboard objectives add Ashen.GazerPlacer.Trigger trigger {"translate": "Ashen.GazerPlacer.ScoreTrigger", "fallback": "Gazer Placer: Trigger"}

#> storage
    #> exec
    # @within function gazerplacer:**
        #declare storage gazerplacer:
