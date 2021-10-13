if not game:IsLoaded() then
    repeat
    until game:IsLoaded()
end

if game.CoreGui:FindFirstChild("Venyx") then
    game.CoreGui:FindFirstChild("Venyx"):destroy()
    end
    
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
    local venyx = library.new("Jotunnheim V.1", 5013109572)
    
    
    -- variables/tables:
    _G.console = false
    _G.chatmessages = true
    local god = false
    local ff = false
    local plrs = game:GetService("Players")
    local plr = plrs.LocalPlayer
    local plrgui = plr.PlayerGui
    local name = plr.Name
    local cha = plr.Character
    local root = cha:WaitForChild("HumanoidRootPart", 2)
    local time = 0.00000000000000000000000000000000001
    local hum = cha.Humanoid
    local Folder = game:GetService("Workspace").Terrain["_Game"].Folder
    local uis = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local rs = game:GetService("ReplicatedStorage")
    local ws = Folder.Parent.Workspace
    local Admin = ws.Parent.Admin
    local Pads = Admin.Pads
    local regen = Admin.Regen
    local ad = ws["Admin Dividers"]
    local house = ws["Basic House"]
    local obby = ws.Obby
    local obbybox = ws["Obby Box"]
    local bricks = ws["Building Bricks"]
    local myjail = name.."'s jail"
    local getplrs = plrs:GetChildren()
    local allparts = ws:GetDescendants()
    local antiabuse = false
    local antijail = false
    local antikill = false
    local antifreeze = false
    local antikill = false
    local antifling = false
    local antipunish = false
    local antiblind = false
    local takepads = false
    local hide = false
    local padLocations = {}

    for i, v in pairs(Pads:GetChildren()) do
        table.insert(padLocations, v.Head.CFrame)
    end
    
    -- functions:
    local function tchat(msg)
        game.Players:Chat(msg)
    end
    
    local function chat(msg)
        if _G.chatmessages then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
        end
    end
    
    local function txt(Text)
        if _G.console then
        rconsoleprint("\n")
        rconsoleprint(Text)
        end
    end
    
    
    
    
    
    -- themes
    local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
    }
    
    -- first page
    local page = venyx:addPage("Main", 5012544693)
    local page2 = venyx:addPage("Misc", 5012544693)
    local page3 = venyx:addPage("Visualisers", 5012544693)
    local page4 = venyx:addPage("Tools", 5012544693)
    local page5 = venyx:addPage("rconsole", 5012544693)
    local page6 = venyx:addPage("Person299", 5012544693)
    
    local section1 = page:addSection("Anti Abuse")
    local section2 = page:addSection("Pads")
    local section3 = page2:addSection("LocalPlayer")
    
    
    txt("Gonna be outputting shit here")
    section1:addToggle("Anti Kill", nil, function(value)
        if value == true then
            antikill = true
            coroutine.wrap(function()
                while antikill do
                     task.wait(time)
                    if plr.Character:WaitForChild("Humanoid").Health == 0 then
                        tchat("reset me")
                        wait(.17)
                    end
                end
            end)()
            else
            antikill = false
            end
    end)
    
    section1:addToggle("Anti Jail", nil, function(value)
        if value == true then
            antijail = true
            coroutine.wrap(function()
                while antijail do
                    Folder:WaitForChild(myjail)
                    Folder[myjail]:destroy()
                    tchat("unjail me")
                    task.wait(time)
                end
            end)()
            else
            antijail = false
            end
    end)
    
    section1:addToggle("Anti Freeze", nil, function(value)
        if value == true then
            antifreeze = true
            coroutine.wrap(function()
                while antifreeze do
                    plr.Character:WaitForChild("ice"):Destroy()
                        tchat("unfreeze me")
                        task.wait(time)
                    end
            end)()
            else
            antifreeze = false
            end
    end)
    
    section1:addToggle("Anti Punish", false, function(value)
        if value == true then
            antipunish = true
            coroutine.wrap(function()
                while antipunish do
            game.Lighting:WaitForChild(plr.Name) 
            plr.Character.Parent = game.Workspace
            game.Players:Chat("unpunish me")
            task.wait(time)
            end
            end)()
            else
            antipunish = false
            end
    end)

    
    section1:addToggle("Anti Blind", nil, function(value)
        if value == true then
            antiblind = true
            coroutine.wrap(function()
                while antiblind do
                    plrgui:WaitForChild("EFFECTGUIBLIND"):Destroy()
                    task.wait(time)
            end
            end)()
            else
            antiblind = false
            end
    end)
    
    section1:addToggle("Anti Fling/Speed", nil, function(value)
        if value == true then
            antifling = true
            coroutine.wrap(function()
                while antifling do
                    task.wait(time)
                local root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            if root.Velocity.X > 25 or root.Velocity.X < -25 then
                game.Players:Chat("reset me")
                wait(.3)
                end
            end
            end)()
            else
            antifling = false
            end
    end)


    section2:addButton("Reset Admin Pads", function()
            fireclickdetector(regen.ClickDetector, 0)
    end)

    section2:addButton("Bring Pads", function()
        fireclickdetector(regen.ClickDetector, 0)
    wait(.2)
        task.wait(time)
        for i, v in pairs(Pads:GetChildren()) do
        v.Head.CanCollide = false
        v.Head.CFrame = root.CFrame
        for _, p in pairs(cha:GetChildren()) do
            if p:IsA("Part") then
                p.CanCollide = false
        end
        end
    end
end)

    
    section2:addToggle("Take All Pads", nil, function(value)
        if value == true then
            takepads = true
            fireclickdetector(regen.ClickDetector, 0)
        wait(.1)
        coroutine.wrap(function()

        while takepads do
            task.wait(time)
            for i, v in pairs(Pads:GetChildren()) do
            firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 0)
            firetouchinterest(plr.Character:WaitForChild("Head"), v.Head, 1)
            end
        end
    end)()
            else
                takepads = false
                wait(1)
                fireclickdetector(regen.ClickDetector, 0)
            end
    end)

    section2:addToggle("Take Pad", nil, function(value)
        if value == true then
            takepads = true
            fireclickdetector(regen.ClickDetector, 0)
            wait(.1)
            local pad = Pads:FindFirstChild("Touch to get admin")
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 0)
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 1)
            coroutine.wrap(function()

            while takepads do
                wait()
                if pad.Name == "Touch to get admin" then
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 0)
            firetouchinterest(plr.Character:WaitForChild("Head"), pad.Head, 1)
            end
            end
        end)()
            else
                wait(.6)
                fireclickdetector(regen.ClickDetector, 0)
                takepads = false
            end
    end)

    section3:addToggle("Hide Character", nil, function(value)
        if value == true then
            hide = true
            coroutine.wrap(function()
                if not plr.Character then
                    txt("Character Does not exist?")
                    else
                        plr.Character:Remove()
                txt("Character Has Been Destroyed!")
                end
                plr.CharacterAdded:Connect(function(character)
                    if hide then
                    character:Destroy()
                    end
                    end)
end)()
else
    hide = false
end
end)

section3:addToggle("Inf God", nil, function(value)
    if value == true then
        god = true
        coroutine.wrap(function()
            tchat("god me")
            local hum = game.Players.LocalPlayer.Character.Humanoid
hum:GetPropertyChangedSignal("Health"):Connect(function()
    if god then
    if hum.Health < 1000000000 then
        tchat("god me")
        end
    end
    end)
    
end)()
else
god = false
end
end)

section3:addToggle("Inf Forcefield", nil, function(value)
    if value == true then
        ff = true
        coroutine.wrap(function()
            tchat("ff me")
            while ff do
    if not cha:FindFirstChild("Forcefield") then
        tchat("ff me")
        task.wait(time)
        end
    end  
end)()
else
ff = false
end
end)

    section3:addButton("SetSpawnPoint", function()
            if rs:FindFirstChild("spawnpoint") then
                rs.spawnpoint:Destroy()
            end
          local spawnpoint = Instance.new("Part", rs)
          spawnpoint.Transparency = 1
          spawnpoint.Name = 'spawnpoint'
          spawnpoint.CFrame = cha.HumanoidRootPart.CFrame
          plr.CharacterAdded:Connect(function(character)
            character:WaitForChild("HumanoidRootPart").CFrame = spawnpoint.CFrame
          end)
end)


    
  
    


    
    
    
    
    
    
    
    -- second page
    local theme = venyx:addPage("Theme", 5012544693)
    local colors = theme:addSection("Colors")
    
    for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(theme, color, function(color3)
    venyx:setTheme(theme, color3)
    end)
    end
    
    -- load
    venyx:SelectPage(venyx.pages[1], true)
    
    