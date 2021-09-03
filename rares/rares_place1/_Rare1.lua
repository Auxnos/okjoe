local vu = Instance.new('SpawnLocation',script)
vu.Neutral = false
vu.CFrame = CFrame.new(0,5,0)
script.Name = "CubeHolder"
vu.Name = "Cube"
vu.Anchored = false
vu.Size = Vector3.new(4.064, 4.064, 4.064)
vu.CanCollide = true
local mesh = Instance.new("SpecialMesh",vu)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9982590"
mesh.TextureId = ""
mesh.Scale = Vector3.new(0.1,0.1,0.1)
vuc = CFrame.new()
local wherer = vuc
pcall(function()
    owner.Mover:Destroy()
end)
Playing = false
local Mover = Instance.new("RemoteEvent",owner)
Mover.Name = "Mover"
Mover.OnServerEvent:Connect(function(pl,method,where)
    if method == "Move" then
        pcall(function()
            wherer = where
        end)
    elseif method == "Refit" then
        script:ClearAllChildren()
    elseif method == "Mute" then
        Playing = not Playing
    end
end)
function cr()
    NLS([==[
task.wait()
script.Parent = nil
local CubeHolder = Instance.new("Part",game:GetService("TestService"))
vu = CubeHolder
script.Name = "CubeHolder"
vu.Name = "Cube"
vu.Anchored = false
vu.Size = Vector3.new(4.064, 4.064, 4.064)
vu.CanCollide = true
local mesh = Instance.new("SpecialMesh",vu)
mesh.MeshId = "rbxassetid://464957313"
mesh.TextureId = "rbxassetid://464957325"
mesh.Scale = Vector3.new(0.1,0.1,0.1)
local function KeyDown(Key)
    return not game:GetService("UserInputService"):GetFocusedTextBox() and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
end
while CubeHolder:IsDescendantOf(game) do
task.wait()
if KeyDown("W") then
CubeHolder.CFrame = CubeHolder.CFrame * CFrame.new(0,0,-1)
end
if KeyDown("S") then
CubeHolder.CFrame = CubeHolder.CFrame * CFrame.new(0,0,1)
end
if KeyDown("A") then
CubeHolder.CFrame = CubeHolder.CFrame * CFrame.new(-1,0,0)
end
if KeyDown("D") then
CubeHolder.CFrame = CubeHolder.CFrame * CFrame.new(1,0,0)
end
if KeyDown("P") then
owner.Mover:FireServer("Refit",true)
end
CubeHolder.CFrame = CFrame.new(CubeHolder.CFrame.p,CubeHolder.CFrame.p+workspace.CurrentCamera.CFrame.LookVector)
for i,v in pairs(workspace.CubeHolder:GetChildren()) do
if v:IsA("BasePart") == true then
if v.Transparency == 1 then
workspace.CurrentCamera.CameraSubject = v
end
end
end
owner.Mover:FireServer("Move",CubeHolder.CFrame)
end
]==],owner.PlayerGui)
end
cr()
gyro = Instance.new("BodyGyro",vu)
gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
gyro.cframe = wherer
pos = Instance.new("BodyPosition",vu)
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
pos.position = wherer.p
local s = Instance.new('SelectionBox',script)
local s2 = Instance.new('SelectionBox',script)
s2.Adornee = vu
s.Adornee = vu
vu3 = vu:Clone()
mesh2,vu2 = mesh:Clone(),vu:Clone()
rng = Random.new()
local sfx = Instance.new("Sound",vu)
sfx.Name = rng:NextNumber(1,10000000000)
sfx.Parent = vu
sfx.SoundId = "rbxassetid://2525700576"
sfx.Looped = true
sfx.Playing = true
sfx.Volume = 5
hed = s2:Clone()
timepos = 0
LastEffect = 0
local hed = vu3:Clone()
local torso = vu3:Clone()
local rightarm = vu3:Clone()
local leftarm = vu3:Clone()
local rightleg = vu3:Clone()
local leftleg = vu3:Clone()
game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        vuc = vu.CFrame
    end)
    pcall(function()
        timepos = sfx.TimePosition
    end)
    Sine = 25*tick()
    if not vu or not pcall(function()
            vu.Parent = script
            vu.Neutral = false
            vu.Anchored = true
            vu.Size = Vector3.new(4.064, 4.064, 4.064)
            vu.CanCollide = false
            vu.CFrame = CFrame.new(wherer.p)*CFrame.Angles(math.rad(360*math.sin(30*tick()/135)),math.rad(-360*math.cos(30*tick()/115)),math.rad(360*math.cos(30*tick()/135)))
        end) then
        game:GetService("Debris"):AddItem(vu,0)
        vu = Instance.new('SpawnLocation',script)
        vu.Neutral = false
        vu.CFrame = CFrame.new(0,5,0)
        vu.Anchored = false
        vu.Size = Vector3.new(4.064, 4.064, 4.064)
        vu.CanCollide = true
        pcall(function()
            vu.CFrame = vuc
        end)
    end
    if not sfx or not pcall(function()
            sfx.Name = rng:NextNumber(1,10000000000)
            sfx.Parent = vu
            sfx.SoundId = "rbxassetid://3339844956"
            sfx.Looped = true
            sfx.Playing = Playing
            sfx.Volume = 5
            sfx.RollOffMaxDistance = 35
        end) then
        game:GetService("Debris"):AddItem(sfx,0)
        sfx = Instance.new("Sound")
        sfx.Name = rng:NextNumber(1,10000000000)
        sfx.Parent = vu
        sfx.SoundId = "rbxassetid://2525700576"
        sfx.Looped = true
        sfx.Playing = true
        sfx.Volume = 5
        pcall(function()
            sfx.TimePosition = timepos
        end)
    end
    if not mesh or not pcall(function()
            mesh.Parent = vu
            mesh.MeshId = "http://www.roblox.com/Asset/?id=9982590"
            mesh.TextureId = ""
            mesh.Scale = Vector3.new(1,1,1)
        end) then
        game:GetService("Debris"):AddItem(mesh,0)
        mesh = Instance.new("SpecialMesh",vu)
        mesh.MeshId = "http://www.roblox.com/Asset/?id=9982590"
        mesh.TextureId = ""
        mesh.Scale = Vector3.new(0.1,0.1,0.1)
    end
    if not vu2 or not pcall(function()
            vu2.Parent = script
            vu2.Neutral = false
            vu2.Anchored = true
            vu2.Size = Vector3.new(5.064, 5.064, 5.064)
            vu2.CanCollide = false
            vu2.Transparency = 1
            vu2.CFrame = CFrame.new(wherer.p)*CFrame.Angles(math.rad(-360*math.sin(30*tick()/135)),math.rad(360*math.cos(30*tick()/115)),math.rad(-360*math.cos(30*tick()/135)))
        end) then
        game:GetService("Debris"):AddItem(vu2,0)
        vu2 = Instance.new('SpawnLocation',script)
        vu2.Neutral = false
        vu2.CFrame = CFrame.new(0,5,0)
        vu2.Anchored = false
        vu2.Size = Vector3.new(4.064, 4.064, 4.064)
        vu2.CanCollide = true
        pcall(function()
            vu2.CFrame = vuc
        end)
    end
    if not vu3 or not pcall(function()
            vu3.Parent = script
            vu3.Neutral = false
            vu3.Anchored = true
            vu3.Size = Vector3.new(6.064, 6.064, 6.064)
            vu3.CanCollide = false
            vu3.Transparency = 1
            vu3.CFrame = CFrame.new(wherer.p)*CFrame.Angles(math.rad(-360*math.sin(30*tick()/70 )),math.rad(360*math.cos(30*tick()/50)),math.rad(-360*math.cos(30*tick()/70)))
        end) then
        game:GetService("Debris"):AddItem(vu3,0)
        vu3 = Instance.new('SpawnLocation',script)
        vu3.Neutral = false
        vu3.CFrame = CFrame.new(0,5,0)
        vu3.Anchored = false
        vu3.Size = Vector3.new(4.064, 4.064, 4.064)
        vu3.CanCollide = true
        pcall(function()
            vu3.CFrame = vuc
        end)
    end
    if not hed or not pcall(function()
            hed.Parent = script
            hed.Neutral = false
            hed.Anchored = true
            hed.Size = Vector3.new(2,1,1)
            hed.CanCollide = false
            hed.Transparency = 0
            hed.CFrame = CFrame.new(wherer.p)*CFrame.new(0,(2+5)-0.5,0)*CFrame.Angles(math.rad(3-6*math.cos(Sine/32)),0,0)
        end) then
        game:GetService("Debris"):AddItem(hed,0)
        hed = Instance.new('SpawnLocation',script)
        hed.Neutral = false
        hed.CFrame = CFrame.new(0,5,0)
        hed.Anchored = false
        hed.Size = Vector3.new(4.064, 4.064, 4.064)
        hed.CanCollide = true
        pcall(function()
            hed.CFrame = vuc
        end)
    end
    if not torso or not pcall(function()
            torso.Parent = script
            torso.Neutral = false
            torso.Anchored = true
            torso.Size = Vector3.new(2,2,1)
            torso.CanCollide = false
            torso.Transparency = 0
            torso.CFrame = CFrame.new(wherer.p)*CFrame.new(0,5,0)
        end) then
        game:GetService("Debris"):AddItem(torso,0)
        torso = Instance.new('SpawnLocation',script)
        torso.Neutral = false
        torso.CFrame = CFrame.new(0,5,0)
        torso.Anchored = false
        torso.Size = Vector3.new(4.064, 4.064, 4.064)
        torso.CanCollide = true
        pcall(function()
            torso.CFrame = vuc
        end)
    end
    if not rightarm or not pcall(function()
            rightarm.Parent = script
            rightarm.Neutral = false
            rightarm.Anchored = true
            rightarm.Size = Vector3.new(1,2,1)
            rightarm.CanCollide = false
            rightarm.Transparency = 0
            rightarm.CFrame = CFrame.new(wherer.p)*CFrame.new(1.5,4.5,0)
        end) then
        game:GetService("Debris"):AddItem(rightarm,0)
        rightarm = Instance.new('SpawnLocation',script)
        rightarm.Neutral = false
        rightarm.CFrame = CFrame.new(0,5,0)
        rightarm.Anchored = false
        rightarm.Size = Vector3.new(4.064, 4.064, 4.064)
        rightarm.CanCollide = true
        pcall(function()
            rightarm.CFrame = vuc
        end)
    end
    if not leftarm or not pcall(function()
            leftarm.Parent = script
            leftarm.Neutral = false
            leftarm.Anchored = true
            leftarm.Size = Vector3.new(1,2,1)
            leftarm.CanCollide = false
            leftarm.Transparency = 0
            leftarm.CFrame = CFrame.new(wherer.p)*CFrame.new(-1.5,4.5,0)
        end) then
        game:GetService("Debris"):AddItem(leftarm,0)
        leftarm = Instance.new('SpawnLocation',script)
        leftarm.Neutral = false
        leftarm.CFrame = CFrame.new(0,5,0)
        leftarm.Anchored = false
        leftarm.Size = Vector3.new(4.064, 4.064, 4.064)
        leftarm.CanCollide = true
        pcall(function()
            leftarm.CFrame = vuc
        end)
    end
    if not rightleg or not pcall(function()
            rightleg.Parent = script
            rightleg.Neutral = false
            rightleg.Anchored = true
            rightleg.Size = Vector3.new(1,2,1)
            rightleg.CanCollide = false
            rightleg.Transparency = 0
            rightleg.CFrame = CFrame.new(wherer.p)*CFrame.new(.5,-4.5+2,0)
        end) then
        game:GetService("Debris"):AddItem(rightleg,0)
        rightleg = Instance.new('SpawnLocation',script)
        rightleg.Neutral = false
        rightleg.CFrame = CFrame.new(0,5,0)
        rightleg.Anchored = false
        rightleg.Size = Vector3.new(4.064, 4.064, 4.064)
        rightleg.CanCollide = true
        pcall(function()
            rightleg.CFrame = vuc
        end)
    end
    if not leftleg or not pcall(function()
            leftleg.Parent = script
            leftleg.Neutral = false
            leftleg.Anchored = true
            leftleg.Size = Vector3.new(1,2,1)
            leftleg.CanCollide = false
            leftleg.Transparency = 0
            leftleg.CFrame = CFrame.new(wherer.p)*CFrame.new(.5,-4.5+1.5,0)*CFrame.Angles(math.rad(90),0,0)
        end) then
        game:GetService("Debris"):AddItem(leftleg,0)
        leftleg = Instance.new('SpawnLocation',script)
        leftleg.Neutral = false
        leftleg.CFrame = CFrame.new(0,5,0)
        leftleg.Anchored = false
        leftleg.Size = Vector3.new(4.064, 4.064, 4.064)
        leftleg.CanCollide = true
        pcall(function()
            leftleg.CFrame = vuc
        end)
    end
    if not mesh2 or not pcall(function()
            mesh2.Parent = vu2
            mesh2.MeshId = "rbxassetid://9982590"
            mesh2.Scale = Vector3.new(1,1,1)
        end) then
        game:GetService("Debris"):AddItem(mesh,0)
        mesh2 = Instance.new("SpecialMesh",vu)
        mesh2.MeshId = "rbxassetid://464957313"
        mesh2.TextureId = "rbxassetid://464957325"
        mesh2.Scale = Vector3.new(0.1,0.1,0.1)
    end
    if not s or not pcall(function()
            s.Adornee = vu2
            s.Parent = script
            s.SurfaceTransparency = 0.9
            s.LineThickness = 0.1
            s.Color3 = Color3.fromRGB(rng:NextNumber(1,100),rng:NextNumber(1,100),rng:NextNumber(1,100))
        end) then
        game:GetService("Debris"):AddItem(s,0)
        s = Instance.new('SelectionBox',script)
    end
    if not s2 or not pcall(function()
            s2.Adornee = vu3
            s2.Parent = script
            s2.SurfaceTransparency = 0.9
            s2.LineThickness = 0.1
            s2.Color3 = Color3.fromRGB(rng:NextNumber(1,100),rng:NextNumber(1,100),rng:NextNumber(1,100))
        end) then
        game:GetService("Debris"):AddItem(s2,0)
        s2 = Instance.new('SelectionBox',script)
    end
    if (tick()-LastEffect)>=1 then
        LastEffect = tick()
        local effect = Instance.new("Part",script)
        effect.CanCollide = false
        effect.Anchored = true
        effect.Material = "Neon"
        effect.Size = Vector3.new(math.random(1,3),math.random(1,3),math.random(1,3))
        effect.CFrame = wherer*CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        task.spawn(function()
            local bodypos = Instance.new("BodyGyro",effect)
            bodypos.CFrame = wherer
            bodypos.D = 1000
            bodypos.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
            local bodypos2 = Instance.new("BodyPosition",effect)
            bodypos2.Position = wherer.p
            bodypos2.D = 500
            bodypos2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            game:GetService("TweenService"):Create(effect,TweenInfo.new(1),{
                Size = Vector3.new()
            }):Play()
            game:GetService("Debris"):AddItem(bodypos,2)
            game:GetService("Debris"):AddItem(bodypos2,2)
            game:GetService("Debris"):AddItem(effect,2)
            effect.Anchored = false
        end)
    end
    if owner.Character then
        owner.Character = nil
    end
end)
wait(1)
script:ClearAllChildren()
