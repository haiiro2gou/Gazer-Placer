#> gazerplacer:interaction/attack/main
# @within function gazerplacer:interaction/attack/

#> private
# @private
    #declare score_holder #GazerPlacer.Attack.Replace

# call config
    function indexstorage:pull/

# mode change
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 1b} run scoreboard players set #GazerPlacer.Attack.Replace Ashen.Global.Temporary 1
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} run scoreboard players set #GazerPlacer.Attack.Replace Ashen.Global.Temporary -1
    scoreboard players operation #GazerPlacer.Attack.Replace Ashen.Global.Temporary *= #-1 Ashen.Global.Const
    execute if score #GazerPlacer.Attack.Replace Ashen.Global.Temporary matches 1 run data modify storage indexstorage: Config.GazerPlacer.ReplaceMode set value true
    execute if score #GazerPlacer.Attack.Replace Ashen.Global.Temporary matches -1 run data modify storage indexstorage: Config.GazerPlacer.ReplaceMode set value false

# notify
    execute if data storage indexstorage: Config.GazerPlacer{NotifyResult: 1b, ReplaceMode: 1b} run tellraw @s [{"translate": "Ashen.GazerPlacer.Attack.Result11", "fallback": "Replace mode enabled"}]
    execute if data storage indexstorage: Config.GazerPlacer{NotifyResult: 1b, ReplaceMode: 0b} run tellraw @s [{"translate": "Ashen.GazerPlacer.Attack.Result10", "fallback": "Replace mode disabled"}]

# particle
    playsound block.piston.extend master @s ~ ~ ~ 0.3 1.2 1
    particle scrape ~ ~1 ~ 0.3 0.4 0.3 1 20 normal

# set config
    function indexstorage:push/

# replace rod
    data modify storage gazerplacer: Interaction.Give.Replace set value true
    execute if data entity @s Inventory[{Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}] run data modify storage gazerplacer: Interaction.Give.Offhand set value true
    function gazerplacer:give

# reset
    scoreboard players reset #GazerPlacer.Attack.Replace Ashen.Global.Temporary
