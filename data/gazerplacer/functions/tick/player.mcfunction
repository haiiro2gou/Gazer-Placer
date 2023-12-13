#> gazerplacer:tick/player
# @within tag/function ashen_lib:tick/player/

#> private
# @private
    #declare score_holder #HaveRod

# trigger
    execute if score @s Ashen.GazerPlacer.Trigger matches -2147483648..2147483647 run function gazerplacer:config/trigger

# spawning checker
    execute as @e[type=interaction,tag=Ashen.GazerPlacer.Interaction] at @e[tag=this,limit=1] if score @s Ashen.GazerPlacer.Detector = @e[tag=this,limit=1] Ashen.Global.UserID run tp @s ~ ~1.2 ~
    scoreboard players set #HaveRod Ashen.Global.Temporary 0
    execute if entity @s[nbt={SelectedItem: {id: "minecraft:stick", tag: {Ashen: {GazerPlacer: {Item: 1b}}}}}] run scoreboard players set #HaveRod Ashen.Global.Temporary 1
    execute if entity @s[nbt={Inventory: [{id: "minecraft:stick", Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}]}] run scoreboard players set #HaveRod Ashen.Global.Temporary 1
    execute if score #HaveRod Ashen.Global.Temporary matches 1 run function gazerplacer:interaction/spawn
    execute if score #HaveRod Ashen.Global.Temporary matches 0 run function gazerplacer:interaction/kill
    scoreboard players reset #HaveRod Ashen.Global.Temporary

# click
    execute as @e[tag=Ashen.GazerPlacer.Interaction] if score @s Ashen.GazerPlacer.Detector = @e[tag=this,limit=1] Ashen.Global.UserID if data entity @s attack run function gazerplacer:interaction/attack/
    execute as @e[tag=Ashen.GazerPlacer.Interaction] if score @s Ashen.GazerPlacer.Detector = @e[tag=this,limit=1] Ashen.Global.UserID if data entity @s interaction run function gazerplacer:interaction/interaction/

# reset
    scoreboard players reset #HaveRod Ashen.Global.Temporary
