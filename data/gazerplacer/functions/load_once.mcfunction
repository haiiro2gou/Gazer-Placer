#> gazerplacer:load_once
# @within function gazerplacer:load

#> version
    data modify storage global Ashen.GazerPlacer.Version set value "v0.0.0"

    tellraw @a [{"text": "================================", "color": "gold"}]
    tellraw @a [{"translate": "Ashen.GazerPlacer.Version", "fallback": "\u00A7aGazer Placer %s", "with": [{"nbt": "Ashen.GazerPlacer.Version", "storage": "minecraft:global", "color": "dark_gray"}]}, {"text": " "}, {"translate": "Ashen.GazerPlacer.Developer", "fallback": "by haiiro2gou", "color": "gray"}]
    tellraw @a [{"text": ""}]
    tellraw @a [{"translate": "Ashen.GazerPlacer.Install", "fallback": "Thanks for Installation!"}]
    tellraw @a [{"text": "================================", "color": "gold"}]

#> reset
    kill @e[tag=Ashen.GazerPlacer.Detection.Marker]
    scoreboard objectives remove Ashen.GazerPlacer.FirstJoin
    scoreboard objectives remove Ashen.GazerPlacer.UserID

#> scoreboard
    #> const
    # @within function
    #   gazerplacer:attack/main
        scoreboard objectives add Ashen.GazerPlacer.Const dummy
        function gazerplacer:define_const

    #> detector
    # @within function
    #   gazerplacer:detector/**
        #declare tag/block gazerplacer:air
        scoreboard objectives add Ashen.GazerPlacer.Detector dummy

    #> handler
    # @within function
    #   gazerplacer:tick/player
    #   gazerplacer:handler/**
        scoreboard objectives add Ashen.GazerPlacer.FirstJoin custom:play_time {"translate": "Ashen.GazerPlacer.ScoreFirstJoin", "fallback": "Gazer Placer: First Join Detection"}

    #> temporary
    # @public
        scoreboard objectives add Ashen.GazerPlacer.Temporary dummy {"translate": "Ashen.GazerPlacer.ScoreTemporary", "fallback": "Gazer Placer: Temporary"}

    #> trigger
    # @within function
    #   gazerplacer:config/**
    #   gazerplacer:tick/player
        scoreboard objectives add Ashen.GazerPlacer.Trigger trigger {"translate": "Ashen.GazerPlacer.ScoreTrigger", "fallback": "Gazer Placer: Trigger"}

    #> UserID
    # @public
        scoreboard objectives add Ashen.GazerPlacer.UserID dummy {"translate": "Ashen.GazerPlacer.ScoreUserID", "fallback": "Gazer Placer: UserID"}

#> storage
    #> global
    # @within function gazerplacer:**
        #declare storage global
        data modify storage global Ashen.Global.Prefix.DEBUG set value "§3DEBUG >> §r"
        data modify storage global Ashen.Global.Prefix.SUCCESS set value "§aSUCCESS >> §r"
        data modify storage global Ashen.Global.Prefix.FAILED set value "§cFAILED >> §r"
        data modify storage global Ashen.Global.Prefix.ERROR set value "§cERROR >> §r"
        data modify storage global Ashen.Global.Prefix.CRIT set value "§4CRITICAL >> §r"

    #> exec
    # @within function gazerplacer:**
        #declare storage gazerplacer:exec

    #> player
    # @public
        #declare storage gazerplacer:player
        data remove storage gazerplacer:player Players
        data modify storage gazerplacer:player Count set value 0

#> clipboard
# @public
    #declare dimension gazerplacer:clipboard
    execute in gazerplacer:clipboard run forceload add 0 0
    execute in gazerplacer:clipboard run setblock 0 0 0 shulker_box{Lock: "lock"}
    execute in gazerplacer:clipboard run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.1"], UUID: [I; 1, 3298, 0, 1]}
    execute in gazerplacer:clipboard run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.2"], UUID: [I; 1, 3298, 0, 2]}
    execute in gazerplacer:clipboard run summon marker 0 0 0 {Tags: ["Ashen.GazerPlacer.Detector.Marker", "Ashen.GazerPlacer.Detector.3"], UUID: [I; 1, 3298, 0, 3]}
