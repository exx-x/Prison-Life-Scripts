_G.nameg = "Prison Life"
local library = loadstring(game:HttpGet("https://pastebin.com/raw/r0LhDBjs"))()
local gamer = library:CreateSection("Local")
local rage = library:CreateSection("Rage") 
local teams = library:CreateSection("Teams")
local tps = library:CreateSection("Teleports")
local credit = library:CreateSection("Credits")

gamer:Button("Universal ESP",function()
     loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY", true))()

end)

gamer:Button("Click Arrest",function()
     local mouse = game.Players.LocalPlayer:GetMouse()
	 local arrestEvent = game.Workspace.Remote.arrest
	 mouse.Button1Down:connect(function()
	 local obj = mouse.Target
	 local response = arrestEvent:InvokeServer(obj)

end)

gamer:Button("AK-47",function()
     wait(0.1)
     local Weapon = {"AK-47"}
     for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
     if v.Name == Weapon[1] then
     local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
     end
     end

end)

gamer:Button("Regminton 870",function()
     local Weapon = {"Remington 870"}
     for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
     if v.Name == Weapon[1] then
     local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
     end
     end

end)

gamer:Button("M9",function()
     local Weapon = {"M9"}
     for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
     if v.Name == Weapon[1] then
     local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
     end
     end

end)
gamer:Button("All Guns",function()
      for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
 
      lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
      print(lol)
      end

end)

gamer:Button("Super Punch",function()
        mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false
function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name)
if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do
meleeRemote:FireServer(plr) end end end end)
wait(1)
cooldown = false
part:Destroy()
end
mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then
punch()
end
end
end)
end)

end)

gamer:Button("Btools",function()
     wait(0.1)
     local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
     local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
     local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
     tool1.BinType = "Clone"
     tool2.BinType = "Hammer"
     tool3.BinType = "Grab"

end)

gamer:Button("Taser Bypass",function()
     game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
     game.Players.LocalPlayer.CharacterAdded:connect(function()
     game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
     game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
     end)

end)

gamer:Button("Bring GUI",function()
      loadstring(game:HttpGet("https://pastebin.com/raw/81pPN4DR", true))()

end)

gamer:Button("Remove Walls",function()
     wait(0.1)
     game.Workspace.Prison_Guard_Outpost:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.building:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.glass:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.oven:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.shelves:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.vents:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.accents:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.vendingmachine:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.Prison_table1:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.counter:Remove()

     wait(0.1)
     game.Workspace.Prison_Cafeteria.boxes:Remove()

end)

gamer:Button("Remove doors",function()
      game.Workspace.Doors:Destroy()

end)

rage:Button("Kill Aura",function()
     game.StarterGui:SetCore("SendNotification", {
Title = "KillAura"; -- the title (ofc)
Text = "Maintain pressed F to start the kill aura"; -- what the text says (ofc) 
Duration = 5; -- how long the notification should in secounds
})
     	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
	if key=='f' then     
		 for i, plr in pairs(game.Players:GetChildren()) do
	  if plr.Name ~= game.Players.LocalPlayer.Name then
	  for i = 1, 15 do
	  game.ReplicatedStorage.meleeEvent:FireServer(plr)
				 end
			end
		  end 
		end
	end)

end)

rage:Button("Kill Others",function()
         workspace.Remote.TeamEvent:FireServer("Medium stone grey")

         game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

         wait(0.5)
         function kill(a)
         local A_1 =
         {
         [1] =
         {
         ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
         ["Distance"] = 3.2524313926697,
         ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
         ["Hit"] = a.Character.Head
         },
         [2] =
         {
         ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
         ["Distance"] = 3.2699294090271,
         ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
         ["Hit"] = a.Character.Head
         },
         [3] =
         {
         ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
         ["Distance"] = 3.1665518283844,
         ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
         ["Hit"] = a.Character.Head
         },
         [4] =
         {
         ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
         ["Distance"] = 3.3218522071838,
         ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
         ["Hit"] = a.Character.Head
         },
         [5] =
         {
         ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
         ["Distance"] = 3.222757101059,
         ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
         ["Hit"] = a.Character.Head
         }
         }
         local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
         local Event = game:GetService("ReplicatedStorage").ShootEvent
         Event:FireServer(A_1, A_2)
         Event:FireServer(A_1, A_2)
         end

         for i,v in pairs(game.Players:GetChildren())do
         if v.Name ~= game.Players.LocalPlayer.Name then
         kill(v)
         end
         end
         wait(1)
         workspace.Remote.TeamEvent:FireServer("Bright orange")
         

end)


rage:Button("Arrest Crims",function()
     local Player = game.Players.LocalPlayer
     local cpos = Player.Character.HumanoidRootPart.CFrame
     for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
     if v.Name ~= Player.Name then
     local i = 10
     repeat
     wait()
     i = i-1
     game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
     Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
     until i == 0

     end
     end
	
end)

rage:Button("Super Punch",function()
     mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)

end)


rage:Button("Taze All",function()
     workspace.Remote.TeamEvent:FireServer("Bright blue")

     function kill(a)
     local A_1 = 
     {
	 [1] = 
     {
	 ["RayObject"] = Ray.new(Vector3.new(829.838562, 101.489998, 2331.25635), Vector3.new(-30.6540909, -5.42795324, 95.0308533)), 
	 ["Distance"] = 15.355997085571, 
	 ["Cframe"] = CFrame.new(826.616699, 100.8508, 2340.11279, 0.964640439, -0.00993416365, -0.263382077, 9.31322575e-10, 0.999289393, -0.0376908854, 0.263569355, 0.0363581516, 0.963954985), 
	 ["Hit"] = a.Character.Torso
     }
     }
     local A_2 = game.Players.LocalPlayer.Backpack["Taser"]
     local Event = game:GetService("ReplicatedStorage").ShootEvent
     Event:FireServer(A_1, A_2)
     end

     for i,v in pairs(game.Players:GetChildren())do
     if v.Name ~= game.Players.LocalPlayer.Name then
     kill(v)
     end
     end

end)
rage:Button("Arrest All",function()
     wait(0.1)
     local Player = game.Players.LocalPlayer
     local cpos = Player.Character.HumanoidRootPart.CFrame
     for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
     if v.Name ~= Player.Name then
     local i = 10
     repeat
     wait()
     i = i-1
     game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
     Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
     until i == 0
     end
     end

end)

rage:Button("Kill All",function()

     wait(0.1)
     local prepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     Players = game:GetService("Players")
     for i, Lplayer in pairs(Players:GetPlayers()) do
     if Lplayer.Name == game:GetService("Players").LocalPlayer.Name then
     local cmd = workspace:FindFirstChild(Lplayer.Name)
     cmd.HumanoidRootPart.CFrame = CFrame.new(863, 110, 2542)
     end
     end


     Players = game:GetService("Players")
     for i, player in pairs(Players:GetPlayers()) do
     print(player.Name)
     if player.Name ~= game:GetService("Players").LocalPlayer.Name then
     local cmd = workspace:FindFirstChild(player.Name)
     cmd.HumanoidRootPart.CFrame = CFrame.new(863, 113, 2542)
     end
     end
	
     wait(0.3)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos

end)

teams:Button("Neutral",function()
     local A_1 = "Medium stone grey"
	 local Event = game:GetService("Workspace").Remote.TeamEvent
	 Event:FireServer(A_1)

end)

teams:Button("Guard",function()
     local A_1 = "Bright blue"
	 local Event = game:GetService("Workspace").Remote.TeamEvent
	 Event:FireServer(A_1)

end)

teams:Button("Prisioner",function()
     local A_1 = "Bright orange"
     local Event = game:GetService("Workspace").Remote.TeamEvent
     Event:FireServer(A_1)

end)

teams:Button("Criminal",function()
     --CRIMINAL TEAM BELOW
     weld02 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
     wait(0.075)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(weld02)

end)

tps:Button("Escape Prison",function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(465.9,98.19,2253.47)

end)

tps:Button("Prison",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)

end)

tps:Button("Prison top",function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(827.88,118.99,2329.7)

end)

tps:Button("Yard",function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.87,98,2458.93)

end)

tps:Button("Crim Base",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.46,94.13,2063.63)

end)



tps:Button("Town",function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-355.02,54.18,2483.85)

end)

tps:Button("Under the Bridge",function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.57,11.1,1291.75)

end) 

tps:Button("Kitchen",function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888.95,102.39,2226.95)

end)

tps:Button("Secret room",function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691.49,100.19,2345.3)

end)

credit:Button("Made by yes.#7553",function()
      

end)

credit:Button("Discord: 33dsate",function()


end)


library:Ready();
