#> gazerplacer:attack/main
# @within function gazerplacer:attack/

#> private
# @private
    #declare score_holder $IsReplace

# call config
    function gazerplacer:config/get

# mode change
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} run scoreboard players set $IsReplace Ashen.GazerPlacer.Temporary 1
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} run scoreboard players set $IsReplace Ashen.GazerPlacer.Temporary -1
    scoreboard players operation $IsReplace Ashen.GazerPlacer.Temporary *= $-1 Ashen.GazerPlacer.Const
    execute if score $IsReplace Ashen.GazerPlacer.Temporary matches 1 run data modify storage gazerplacer:player Config.ReplaceMode set value true
    execute if score $IsReplace Ashen.GazerPlacer.Temporary matches -1 run data modify storage gazerplacer:player Config.ReplaceMode set value false

# notify
    execute if data storage gazerplacer:player Config{NotifyResult: 1b, ReplaceMode: 1b} run tellraw @s [{"translate": "Ashen.GazerPlacer.Attack.Result11", "fallback": "Replace mode enabled"}]
    execute if data storage gazerplacer:player Config{NotifyResult: 1b, ReplaceMode: 0b} run tellraw @s [{"translate": "Ashen.GazerPlacer.Attack.Result10", "fallback": "Replace mode disabled"}]

# particle
    playsound block.piston.extend master @s ~ ~ ~ 0.3 1.2 1
    particle scrape ~ ~1 ~ 0.3 0.4 0.3 1 20 normal

# set config
    function gazerplacer:config/set

# replace rod
    data modify storage gazerplacer:exec Replace set value true
    execute if data entity @s Inventory[{Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}] run data modify storage gazerplacer:exec IsOffhand set value true
    function gazerplacer:give

# reset
    scoreboard players reset $IsReplace Ashen.GazerPlacer.Temporary
