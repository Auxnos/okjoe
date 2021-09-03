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
if KeyDown("W") or KeyDown("A") or KeyDown("S") or KeyDown("D") then
CubeHolder.CFrame = CFrame.new(CubeHolder.CFrame.p,CubeHolder.CFrame.p+workspace.CurrentCamera.CFrame.LookVector)
end
for i,v in pairs(workspace.CubeHolder:GetChildren()) do
if v:IsA("BasePart") == true then
if v.Transparency == 1 then
workspace.CurrentCamera.CameraSubject = v
end
end
end
owner.Mover:FireServer("Move",CubeHolder.CFrame)
end
