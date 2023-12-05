#> gazerplacer:use/main
# @within function gazerplacer:use/

#> private
# @private
    #declare score_holder $x
    #declare score_holder $y
    #declare score_holder $z

# get config
    function gazerplacer:config/get

# set target
    execute store result score $x Ashen.GazerPlacer.Temporary run data get storage gazerplacer:exec Detector.Position[0] 1
    execute store result score $y Ashen.GazerPlacer.Temporary run data get storage gazerplacer:exec Detector.Position[1] 1
    execute store result score $z Ashen.GazerPlacer.Temporary run data get storage gazerplacer:exec Detector.Position[2] 1
# config check
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if data storage gazerplacer:exec Detector{Facing: "east"} run scoreboard players add $x Ashen.GazerPlacer.Temporary 1
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if data storage gazerplacer:exec Detector{Facing: "north"} run scoreboard players remove $z Ashen.GazerPlacer.Temporary 1
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if data storage gazerplacer:exec Detector{Facing: "west"} run scoreboard players remove $x Ashen.GazerPlacer.Temporary 1
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if data storage gazerplacer:exec Detector{Facing: "south"} run scoreboard players add $z Ashen.GazerPlacer.Temporary 1
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if data storage gazerplacer:exec Detector{Facing: "up"} run scoreboard players add $y Ashen.GazerPlacer.Temporary 1
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} if data storage gazerplacer:exec Detector{Facing: "down"} run scoreboard players remove $y Ashen.GazerPlacer.Temporary 1
# set variable
    tp 1-0-ce2-0-1 @s
    execute store result entity 1-0-ce2-0-1 Pos[0] double 1 run scoreboard players get $x Ashen.GazerPlacer.Temporary
    execute store result entity 1-0-ce2-0-1 Pos[1] double 1 run scoreboard players get $y Ashen.GazerPlacer.Temporary
    execute store result entity 1-0-ce2-0-1 Pos[2] double 1 run scoreboard players get $z Ashen.GazerPlacer.Temporary
# execute
    execute if data entity @s SelectedItem{tag: {Ashen: {GazerPlacer: {Item: 1b}}}} run data modify storage gazerplacer:exec temp set from entity @s Inventory[{Slot: -106b}].id
    execute if data entity @s Inventory[{Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}] run data modify storage gazerplacer:exec temp set from entity @s SelectedItem.id
    execute as 1-0-ce2-0-1 at @s run function gazerplacer:use/core with storage gazerplacer:exec
    data remove storage gazerplacer:exec temp

# notification
    execute if data storage gazerplacer:player Config{NotifyResult: 1b} run tellraw @a [{"translate": "Ashen.GazerPlacer.Use.Notify", "with":[{"score": {"name": "$x", "objective": "Ashen.GazerPlacer.Temporary"}},{"score": {"name": "$y", "objective": "Ashen.GazerPlacer.Temporary"}},{"score": {"name": "$z", "objective": "Ashen.GazerPlacer.Temporary"}}], "fallback": "Placed Block"}]

# reset
    execute in gazerplacer:clipboard run tp 1-0-ce2-0-1 0 0 0
    scoreboard players reset $x Ashen.GazerPlacer.Temporary
    scoreboard players reset $y Ashen.GazerPlacer.Temporary
    scoreboard players reset $z Ashen.GazerPlacer.Temporary
