#> gazerplacer:tick/player
# @within function gazerplacer:tick/

#> private
# @private
    #declare score_holder $HaveRod

# this is this,
    tag @s add this

# index
    execute store result storage gazerplacer:player Index int 1 run scoreboard players get @s Ashen.GazerPlacer.UserID

# trigger
    execute if entity @s[scores={Ashen.GazerPlacer.FirstJoin=1}] run function gazerplacer:handler/first_join
    execute if score @s Ashen.GazerPlacer.Trigger matches -2147483648..2147483647 run function gazerplacer:config/trigger

# spawning checker
    execute as @e[type=interaction,tag=Ashen.GazerPlacer.Interaction] at @e[tag=this,limit=1] if score @s Ashen.GazerPlacer.UserID = @e[tag=this,limit=1] Ashen.GazerPlacer.UserID run tp @s ~ ~1.2 ~
    scoreboard players set $HaveRod Ashen.GazerPlacer.Temporary 0
    execute if entity @s[nbt={SelectedItem: {id: "minecraft:stick", tag: {Ashen: {GazerPlacer: {Item: 1b}}}}}] run scoreboard players set $HaveRod Ashen.GazerPlacer.Temporary 1
    execute if entity @s[nbt={Inventory: [{id: "minecraft:stick", Slot: -106b, tag: {Ashen: {GazerPlacer: {Item: 1b}}}}]}] run scoreboard players set $HaveRod Ashen.GazerPlacer.Temporary 1
    execute if score $HaveRod Ashen.GazerPlacer.Temporary matches 1 run function gazerplacer:interaction/spawn
    execute if score $HaveRod Ashen.GazerPlacer.Temporary matches 0 run function gazerplacer:interaction/kill
    scoreboard players reset $HaveRod Ashen.GazerPlacer.Temporary

# click
    execute as @e[tag=Ashen.GazerPlacer.Interaction] if score @s Ashen.GazerPlacer.UserID = @e[tag=this,limit=1] Ashen.GazerPlacer.UserID if data entity @s attack run function gazerplacer:attack/
    execute as @e[tag=Ashen.GazerPlacer.Interaction] if score @s Ashen.GazerPlacer.UserID = @e[tag=this,limit=1] Ashen.GazerPlacer.UserID if data entity @s interaction run function gazerplacer:use/

# that is that
    tag @s remove this

# reset
    data remove storage gazerplacer:player Index
    scoreboard players reset $HaveRod Temporary