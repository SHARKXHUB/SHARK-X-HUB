--OldWorld 2753915549
--NewWorld 4442272183
--// LOADED UI \\--  


if _G.STATUSUI == nil then
   _G.STATUSUITEXT = "Loadded Succesfully"
   else
       _G.STATUSUITEXT = "Reload Succesfully"
   end
   loadstring(game:HttpGet("https://pastebin.com/raw/RTCQUQyG"))()
   local games = {
               [2753915549] = {
                  Title = "Blox Fruits",
                  Icons = "C",
                  Welcome = function()
                        return tostring(
                           "<Color=Red>-==[<Color=White>  ".._G.SYMBOL.." SHARK X HUB <Color=Red>  ]==-\n<Color=Green>!! <Color=White>".._G.STATUSUITEXT.." <Color=Green>!!"
                             
                        )
                  end
               }
            }
            if games[game.PlaceId] then
               if games[game.PlaceId].Title == "Blox Fruits" then
                  local function notify(types, ...)
                        if types == "Notify" then
                           require(game.ReplicatedStorage.Notification).new(...):Display()
                        end
                  end
                  notify("Notify", games[game.PlaceId].Welcome())
               end
            end
   --// ADMIN SETTINGS \\--
   _G.NAMEUI = "BLOX FRUIT | SHARK X ".._G.SYMBOL1.." APHISARA"
   if game.CoreGui:FindFirstChild(_G.NAMEUI) then
      game.CoreGui:FindFirstChild(_G.NAMEUI):Destroy()
    end  
   --// NORMAL SETTINGS \\--
   _G.UPSTATS = 1
   _G.HITBOX = false
   _G.FARM = false
   _G.MODE = CFrame.new(0,20,0)
   _G.MODEE = CFrame.new(0,20,0)



          
   local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SHARKXHUB/LIB/main/UI-LIB-KING-HUB"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
   local Notification = loadstring(game:HttpGet("https://pastebin.com/raw/eE15aXPH"))() -- Notifier UI
   local venyx = library.new(_G.NAMEUI, 5013109572)
   
   --// NORMAL THEMES \\--
   local themes = {
   Background = Color3.fromRGB(24, 24, 24),
   Glow = Color3.fromRGB(0, 0, 0),
   Accent = Color3.fromRGB(10, 10, 10),
   LightContrast = Color3.fromRGB(20, 20, 20),
   DarkContrast = Color3.fromRGB(14, 14, 14),  
   TextColor = Color3.fromRGB(0, 223, 255)
   }
   
   
   
   -- first page
   local page = venyx:addPage("Main", 7040391851)
   local section1 = page:addSection("Auto Farm Level")
   local section2 = page:addSection("Weapon")
   
   section1:addToggle("Auto Farm", nil, function(value)
   
   _G.FARM = value
   
          OldWorld = false
          newworld = false
          local placeId = game.PlaceId
          if placeId == 2753915549 then
             OldWorld = true
          elseif placeId == 4442272183 then
             newworld = true
          end
   
   -- Check level + check quest
   if _G.QUESTPOS  == nil then
       else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.QUESTPOS  
    end
   
   
   function checkquest()
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
       --nothing
       else
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.QUESTPOS  
         wait(1.5)
   local args = {
       [1] = "StartQuest",
       [2] = _G.QUESTNAME,
       [3] = _G.QUESTNUMBER
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   wait(0.5)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PUK
   wait(1)
   end
   end
   
   
   
   
   -- check quest abandon
   function abandon()
   if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text == _G.QUESTTEXT then
       --nothing
       else
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.QUESTPOS
   local args = {
       [1] = "AbandonQuest"
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
     
   end
   end
   
   
   -- hitbox
   function hitbox()
       for i,v in pairs (game:GetService("Workspace").Enemies:GetChildren()) do
           if v.Name == _G.MONNAME then
               v.HumanoidRootPart.Size = Vector3.new(40,40,40)
               if _G.HITBOX == true then
               v.HumanoidRootPart.Transparency = 1
               else
                   v.HumanoidRootPart.Transparency = 0.5
                   end
               end
           end
   end
   function bring()
       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
           for k,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if x.Name == _G.MONNAME then
                   if v.Name == _G.MONNAME then
                       v.HumanoidRootPart.CFrame = x.HumanoidRootPart.CFrame
                       v.HumanoidRootPart.CanCollide = false
                       sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
           end
       end
   end
   end
   end
   
   while _G.FARM do wait()
       local LEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
       if game.PlaceId == 2753915549 then
   if LEVEL == 1 or LEVEL <= 9 then
   _G.MONNAME = "Bandit [Lv. 5]"
   _G.QUESTNAME = "BanditQuest1"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(1059.16223, 16.3627396, 1548.61841, -0.937358618, 9.94775604e-08, 0.348365903, 9.82571038e-08, 1, -2.11714699e-08, -0.348365903, 1.43841641e-08, -0.937358618)
   _G.PUK = CFrame.new(1095.95618, 67.8474503, 1617.60278, 0.334988832, 4.35448122e-08, -0.942222118, -4.86487686e-08, 1, 2.89188904e-08, 0.942222118, 3.61504391e-08, 0.334988832)
   _G.QUESTTEXT = "Reward:\n$350\n250 Exp."
   elseif LEVEL == 10 or LEVEL <= 14 then
   _G.MONNAME = "Monkey [Lv. 14]"   
   _G.QUESTNAME = "JungleQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-1599.82532, 36.8521347, 153.959076, 0.00275422214, 5.1952032e-08, -0.999996185, 1.33985356e-08, 1, 5.1989133e-08, 0.999996185, -1.35416744e-08, 0.00275422214)
   _G.PUK = CFrame.new(-1326.20691, 18.6214142, -546.348816, -0.373401791, -4.5086324e-08, -0.927669764, -7.822198e-08, 1, -1.71161076e-08, 0.927669764, 6.61729658e-08, -0.373401791)
   _G.QUESTTEXT = "Reward:\n$800\n1,800 Exp."
   elseif LEVEL == 15 or LEVEL <= 29 then
   _G.MONNAME = "Gorilla [Lv. 20]"   
   _G.QUESTNAME = "JungleQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-1599.82532, 36.8521347, 153.959076, 0.00275422214, 5.1952032e-08, -0.999996185, 1.33985356e-08, 1, 5.1989133e-08, 0.999996185, -1.35416744e-08, 0.00275422214)
   _G.PUK = CFrame.new(-1123.5816650391, 40.462215423584, -499.97018432617)
   _G.QUESTTEXT = "Reward:\n$1,200\n3,500 Exp."
   elseif LEVEL == 30 or LEVEL <= 39 then
   _G.MONNAME = "Pirate [Lv. 35]"   
   _G.QUESTNAME = "BuggyQuest1"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-1139.89978, 4.75204945, 3827.28198, -0.978285253, -5.40383516e-09, 0.207262978, 8.35276559e-09, 1, 6.54975736e-08, -0.207262978, 6.58065318e-08, -0.978285253)
   _G.PUK = CFrame.new(-1050.1062011719, 67.651809692383, 3957.0092773438)
   _G.QUESTTEXT = "Reward:\n$3,000\n10,000 Exp."
   elseif LEVEL == 40 or LEVEL <= 59 then
   _G.MONNAME = "Brute [Lv. 45]"   
   _G.QUESTNAME = "BuggyQuest1"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-1139.89978, 4.75204945, 3827.28198, -0.978285253, -5.40383516e-09, 0.207262978, 8.35276559e-09, 1, 6.54975736e-08, -0.207262978, 6.58065318e-08, -0.978285253)
   _G.PUK = CFrame.new(-1153.0838623047, 57.161735534668, 4176.1440429688)
   _G.QUESTTEXT = "Reward:\n$3,500\n18,000 Exp."
   elseif LEVEL == 60 or LEVEL <= 74 then
   _G.MONNAME = "Desert Bandit [Lv. 60]"   
   _G.QUESTNAME = "DesertQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(896.408142, 6.43846178, 4389.37891, -0.846945703, -2.31297754e-08, 0.531679392, -1.55507234e-08, 1, 1.87315088e-08, -0.531679392, 7.59657048e-09, -0.846945703)
   _G.PUK = CFrame.new(949.532593, 15.2893953, 4403.09912, -0.832314849, -4.19622452e-08, 0.55430311, 7.94023236e-10, 1, 7.68949704e-08, -0.55430311, 6.44409539e-08, -0.832314849)
   _G.QUESTTEXT = "Reward:\n$4,000\n35,000 Exp."
   elseif LEVEL == 75 or LEVEL <= 89 then
   _G.MONNAME = "Desert Officer [Lv. 70]"   
   _G.QUESTNAME = "DesertQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(896.408142, 6.43846178, 4389.37891, -0.846945703, -2.31297754e-08, 0.531679392, -1.55507234e-08, 1, 1.87315088e-08, -0.531679392, 7.59657048e-09, -0.846945703)
   _G.PUK = CFrame.new(1547.40369, 14.4520388, 4359.40625, 0.228631318, -1.20783e-07, -0.973513126, -3.43095508e-08, 1, -1.32126871e-07, 0.973513126, 6.36091286e-08, 0.228631318)
   _G.QUESTTEXT = "Reward:\n$4,500\n50,000 Exp."
   elseif LEVEL == 90 or LEVEL <= 99 then
   _G.MONNAME = "Snow Bandit [Lv. 90]"   
   _G.QUESTNAME = "SnowQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
   _G.PUK = CFrame.new(1419.1417236328, 119.61999511719, -1413.1545410156)
   _G.QUESTTEXT = "Reward:\n$5,000\n70,000 Exp."
   elseif LEVEL == 100 or LEVEL <= 119 then
   _G.MONNAME = "Snowman [Lv. 100]"   
   _G.QUESTNAME = "SnowQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
   _G.PUK = CFrame.new(1219.9207763672, 138.01184082031, -1488.9234619141)
   _G.QUESTTEXT = "Reward:\n$5,500\n120,000 Exp."
   elseif LEVEL == 120 or LEVEL <= 149 then
   _G.MONNAME = "Chief Petty Officer [Lv. 120]"   
   _G.QUESTNAME = "MarineQuest2"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
   _G.PUK = CFrame.new(-4927.1708984375, 40.6520652771, 4152.5268554688)
   _G.QUESTTEXT = "Reward:\n$6,000\n180,000 Exp."
   elseif LEVEL == 150 or LEVEL <= 174 then
   _G.MONNAME = "Sky Bandit [Lv. 150]"   
   _G.QUESTNAME = "SkyQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
   _G.PUK = CFrame.new(-4955.8520507813, 365.44644165039, -2911.5183105469)
   _G.QUESTTEXT = "Reward:\n$7,000\n250,000 Exp."
   elseif LEVEL == 174 or LEVEL <= 224 then
   _G.MONNAME = "Dark Master [Lv. 175]"   
   _G.QUESTNAME = "SkyQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
   _G.PUK = CFrame.new(-5146.478515625, 439.27435302734, -2338.4731445313)
   _G.QUESTTEXT = "Reward:\n$7,500\n350,000 Exp."
   elseif LEVEL == 225  or LEVEL <= 274 then
   _G.MONNAME = "Toga Warrior [Lv. 225]"   
   _G.QUESTNAME = "ColosseumQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
   _G.PUK = CFrame.new(-1908.7215576172, 49.0544090271, -2902.6662597656)
   _G.QUESTTEXT = "Reward:\n$7,000\n700,000 Exp."
   elseif LEVEL == 275  or LEVEL <= 299 then
   _G.MONNAME = "Gladiator [Lv. 275]"   
   _G.QUESTNAME = "ColosseumQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
   _G.PUK = CFrame.new(-1491.9755859375, 49.053775787354, -3319.7390136719)
   _G.QUESTTEXT = "Reward:\n$7,500\n1,000,000 Exp."
   elseif LEVEL == 300  or LEVEL <= 329 then
   _G.MONNAME = "Military Soldier [Lv. 300]"   
   _G.QUESTNAME = "MagmaQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
   _G.PUK = CFrame.new(-5311.2822265625, 52.057613372803, 8501.89453125)
   _G.QUESTTEXT = "Reward:\n$8,250\n1,300,000 Exp."
   elseif LEVEL == 330  or LEVEL <= 374 then
   _G.MONNAME = "Military Spy [Lv. 330]"   
   _G.QUESTNAME = "MagmaQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
   _G.PUK = CFrame.new(-5786.09375, 120.39544677734, 8763.904296875)
   _G.QUESTTEXT = "Reward:\n$8,500\n1,850,000 Exp."
   elseif LEVEL == 375  or LEVEL <= 399 then
   _G.MONNAME = "Fishman Warrior [Lv. 375]"   
   _G.QUESTNAME = "FishmanQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
   _G.PUK = CFrame.new(60998.36328125, 96.373001098633, 1409.1947021484)
   _G.QUESTTEXT = "Reward:\n$8,750\n2,500,000 Exp."
   elseif LEVEL == 400  or LEVEL <= 449 then
   _G.MONNAME = "Fishman Commando [Lv. 400]"   
   _G.QUESTNAME = "FishmanQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
   _G.PUK = CFrame.new(61906.16796875, 108.50987243652, 1561.6348876953)
   _G.QUESTTEXT = "Reward:\n$9,000\n3,000,000 Exp."
   elseif LEVEL == 450  or LEVEL <= 474 then
   _G.MONNAME = "God's Guard [Lv. 450]"   
   _G.QUESTNAME = "SkyExp1Quest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
   _G.PUK = CFrame.new(-4646.32421875, 930.53002929688, -1755.6791992188)
   _G.QUESTTEXT = "Reward:\n$8,750\n3,800,000 Exp."
   elseif LEVEL == 475  or LEVEL <= 524 then
   _G.MONNAME = "Shanda [Lv. 475]"   
   _G.QUESTNAME = "SkyExp1Quest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-7861.2163085938, 5545.5180664063, -382.10601806641)
   _G.PUK = CFrame.new(-7685.7646484375, 5582.951171875, -441.21575927734)
   _G.QUESTTEXT = "Reward:\n$9,000\n4,300,000 Exp."
   elseif LEVEL == 525  or LEVEL <= 549 then
   _G.MONNAME = "Royal Squad [Lv. 525]"   
   _G.QUESTNAME = "SkyExp2Quest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(-7904.7631835938, 5635.9897460938, -1411.6595458984)
   _G.PUK = CFrame.new(-7640.3754882813, 5637.1079101563, -1410.9654541016)
   _G.QUESTTEXT = "Reward:\n$9,500\n4,600,000 Exp."
   elseif LEVEL == 550  or LEVEL <= 624 then
   _G.MONNAME = "Royal Soldier [Lv. 550]"   
   _G.QUESTNAME = "SkyExp2Quest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(-7904.7631835938, 5635.9897460938, -1411.6595458984)
   _G.PUK = CFrame.new(-7859.8315429688, 5644.3002929688, -1706.5093994141)
   _G.QUESTTEXT = "Reward:\n$9,750\n5,000,000 Exp."
   elseif LEVEL == 625  or LEVEL <= 649 then
   _G.MONNAME = "Galley Pirate [Lv. 625]"   
   _G.QUESTNAME = "FountainQuest"
   _G.QUESTNUMBER = 1
   _G.QUESTPOS = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
   _G.PUK = CFrame.new(5553.8735351563, 109.42530059814, 4081.8322753906)
   _G.QUESTTEXT = "Reward:\n$10,000\n5,800,000 Exp."
   elseif LEVEL >= 650  then
   _G.MONNAME = "Galley Captain [Lv. 650]"   
   _G.QUESTNAME = "FountainQuest"
   _G.QUESTNUMBER = 2
   _G.QUESTPOS = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
   _G.PUK = CFrame.new(5562.802734375, 114.23865509033, 4813.486328125)
   _G.QUESTTEXT = "Reward:\n$10,000\n6,300,000 Exp."
   end

else
      if LEVEL == 700  or LEVEL <= 724 then
         _G.MONNAME = "Raider [Lv. 700]"   
         _G.QUESTNAME = "Area1Quest"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(-426.83334350586, 72.99634552002, 1836.3073730469)
         _G.PUK = CFrame.new(-308.35919189453, 109.8524017334, 2185.9724121094)
         _G.QUESTTEXT = "Reward:\n$10,250\n6,750,000 Exp."
      elseif LEVEL == 725  or LEVEL <= 774 then
         _G.MONNAME = "Mercenary [Lv. 725]"   
         _G.QUESTNAME = "Area1Quest"
         _G.QUESTNUMBER = 2
         _G.QUESTPOS = CFrame.new(-426.83334350586, 72.99634552002, 1836.3073730469)
         _G.PUK = CFrame.new(-862.95141601563, 122.47104644775, 1431.6789550781)
         _G.QUESTTEXT = "Reward:\n$10,500\n7,000,000 Exp."
      elseif LEVEL == 775  or LEVEL <= 799 then
         _G.MONNAME = "Swan Pirate [Lv. 775]"   
         _G.QUESTNAME = "Area2Quest"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(636.67327880859, 73.096351623535, 918.58721923828)
         _G.PUK = CFrame.new(975.18939208984, 142.72006225586, 1213.2492675781)
         _G.QUESTTEXT = "Reward:\n$10,750\n7,500,000 Exp."
      elseif LEVEL == 800  or LEVEL <= 874 then
         _G.MONNAME = "Factory Staff [Lv. 800]"   
         _G.QUESTNAME = "Area2Quest"
         _G.QUESTNUMBER = 2
         _G.QUESTPOS = CFrame.new(636.67327880859, 73.096351623535, 918.58721923828)
         _G.PUK = CFrame.new(346.08749389648, 139.86044311523, -247.63478088379)
         _G.QUESTTEXT = "Reward:\n$11,000\n8,250,000 Exp."
      elseif LEVEL == 875  or LEVEL <= 899 then
         _G.MONNAME = "Marine Lieutenant [Lv. 875]"   
         _G.QUESTNAME = "MarineQuest3"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
         _G.PUK = CFrame.new(-2880.888671875, 151.74026489258, -3102.7438964844)
         _G.QUESTTEXT = "Reward:\n$11,250\n9,000,000 Exp."
      elseif LEVEL == 900  or LEVEL <= 949 then
         _G.MONNAME = "Marine Captain [Lv. 900]"   
         _G.QUESTNAME = "MarineQuest3"
         _G.QUESTNUMBER = 2
         _G.QUESTPOS = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
         _G.PUK = CFrame.new(-2026.9750976563, 119.37310791016, -3183.2036132813)
         _G.QUESTTEXT = "Reward:\n$11,500\n10,500,000 Exp."
      elseif LEVEL == 950  or LEVEL <= 974 then
         _G.MONNAME = "Zombie [Lv. 950]"   
         _G.QUESTNAME = "ZombieQuest"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
         _G.PUK = CFrame.new(-5563.548828125, 102.58236694336, -816.18304443359)
         _G.QUESTTEXT = "Reward:\n$11,750\n11,000,000 Exp."
      elseif LEVEL == 975 or LEVEL <= 999 then
         _G.MONNAME = "Vampire [Lv. 975]"   
         _G.QUESTNAME = "ZombieQuest"
         _G.QUESTNUMBER = 2
         _G.QUESTPOS = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
         _G.PUK = CFrame.new(-6058.7250976563, 222.13470458984, -1269.2659912109)
         _G.QUESTTEXT = "Reward:\n$12,000\n12,000,000 Exp."
      elseif LEVEL == 1000 or LEVEL <= 1049 then
         _G.MONNAME = "Snow Trooper [Lv. 1000]"   
         _G.QUESTNAME = "SnowMountainQuest"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
         _G.PUK = CFrame.new(401.12814331055, 453.24252319336, -5282.6806640625)
         _G.QUESTTEXT = "Reward:\n$12,250\n13,000,000 Exp."
      elseif LEVEL == 1050 or LEVEL <= 1099 then
         _G.MONNAME = "Winter Warrior [Lv. 1050]"   
         _G.QUESTNAME = "SnowMountainQuest"
         _G.QUESTNUMBER = 2
         _G.QUESTPOS = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
         _G.PUK = CFrame.new(1254.4925537109, 460.20809936523, -5187.2954101563)
         _G.QUESTTEXT = "Reward:\n$12,500\n14,200,000 Exp."
      elseif LEVEL == 1100 or LEVEL <= 1124 then
         _G.MONNAME = "Lab Subordinate [Lv. 1100]"   
         _G.QUESTNAME = "IceSideQuest"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
         _G.PUK = CFrame.new(-5977.0205078125, 44.332748413086, -4609.603515625)
         _G.QUESTTEXT = "Reward:\n$12,250\n15,500,000 Exp."
      elseif LEVEL == 1125 or LEVEL <= 1174 then
         _G.MONNAME = "Horned Warrior [Lv. 1125]"   
         _G.QUESTNAME = "IceSideQuest"
         _G.QUESTNUMBER = 2
         _G.QUESTPOS = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
         _G.PUK = CFrame.new(-6403.0678710938, 36.843845367432, -5974.0307617188)
         _G.QUESTTEXT = "Reward:\n$12,500\n16,800,000 Exp."
      elseif LEVEL == 1175 or LEVEL <= 1199 then
         _G.MONNAME = "Magma Ninja [Lv. 1175]"   
         _G.QUESTNAME = "FireSideQuest"
         _G.QUESTNUMBER = 1
         _G.QUESTPOS = CFrame.new(-5427.5869140625, 15.977565765381, -5296.8896484375)
         _G.PUK = CFrame.new(-5597.2622070313, 73.26025390625, -6048.6669921875)
         _G.QUESTTEXT = "Reward:\n$12,250\n18,000,000 Exp."
      end
   end
       pcall(function()
   checkquest() --function
   abandon() --function 
   hitbox() --function
   bring()
   
   --attack
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
   
   
   -- tpmon
   for i,v in pairs (game:GetService("Workspace").Enemies:GetChildren()) do
       if v.Name == _G.MONNAME and v.Humanoid.Health == 0 then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PUK
       
       elseif v.Name == _G.MONNAME  then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * _G.MODE
               end
   end
       game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
       end)
   end
   
   
   
   
   end)
   section1:addButton("Teleport Quest", function()
     if _G.QUESTPOS == nil then
        spawn(function()
           Notification.Notify("Faileded!!", "Please, Try again later.", "rbxassetid://4914902889");
         end)
     else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.QUESTPOS
     end

   end)


   section1:addDropdown("Select Mode Farm", {"Above", "Under", "Behide"}, function(Value)
       if Value == "Above" then
           _G.MODE = CFrame.new(0,20,0)
       elseif Value == "Under" then
           _G.MODE = CFrame.new(0,-20,0)
       elseif Value == "Behide" then 
           _G.MODE = CFrame.new(0,0,20)
           end
   end)
   section1:addToggle("Hide Hitbox", nil, function(value)
       _G.HITBOX = value
   end)
   
   
   section1:addToggle("Auto Super-Human", nil, function(value)
           _G.SUPERHUMAN = value
           while _G.SUPERHUMAN do wait()
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                              local args = {
                                 [1] = "BuyBlackLeg"
                              }
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                           end   
                           if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                                 _G.WEAPONUO = "Black Leg"
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                                 _G.WEAPONUO = "Electro"
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                                 _G.WEAPONUO = "Fishman Karate"
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                                 _G.WEAPONUO = "Dragon Claw"
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                                 local args = {
                                    [1] = "BuyElectro"
                                 }
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              end
                              if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                                 local args = {
                                    [1] = "BuyElectro"
                                 }
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                                 local args = {
                                    [1] = "BuyFishmanKarate"
                                 }
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              end
                              if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                                 local args = {
                                    [1] = "BuyFishmanKarate"
                                 }
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                                   local args = {
                                      [1] = "BlackbeardReward",
                                      [2] = "DragonClaw",
                                      [3] = "1"
                                   }
                                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                   local args = {
                                      [1] = "BlackbeardReward",
                                      [2] = "DragonClaw",
                                      [3] = "2"
                                   }
                                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                              end
                              if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                                local args = {
                                   [1] = "BlackbeardReward",
                                   [2] = "DragonClaw",
                                   [3] = "1"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                   [1] = "BlackbeardReward",
                                   [2] = "DragonClaw",
                                   [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                              end
                              if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                                 local args = {
                                    [1] = "BuySuperhuman"
                                 }
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              end
                              if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                                 local args = {
                                    [1] = "BuySuperhuman"
                                 }
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              end
                           end
           
           end
       end)
   
    Wapon = {}
           for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
              if v:IsA("Tool") then
                 table.insert(Wapon ,v.Name)
              end
           end
           for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
              if v:IsA("Tool") then
                 table.insert(Wapon, v.Name)
              end
           end
   
   
   section2:addDropdown("Select Weapon", Wapon, function(Value)
      SelectToolWeapon = Value
              _G.WEAPONUO = Value
              SelectToolWeaponOld = Value
   end)
   
   
   section2:addToggle("Auto Equip", nil, function(va)
       _G.AUTOEQUIP = va
       while _G.AUTOEQUIP do wait(1)
       pcall(function()
           
   
   local Backpack = game.Players.LocalPlayer.Backpack
   local Tool = _G.WEAPONUO
   game.Players.LocalPlayer.Character.Humanoid:EquipTool(Backpack[Tool])
   
           
       end)
       end
   end)
   
   local page4 = venyx:addPage("Stats", 7040410130)
   local st = page4:addSection("Auto stats")
   
   
   st:addToggle("Melee", nil, function(va)
   _G.UP1 = va
   while _G.UP1 do wait(1)
   local args = {
       [1] = "AddPoint",
       [2] = "Melee",
       [3] = _G.UPSTATS
   }
   
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end
   end)
   
   st:addToggle("Defends", nil, function(va)
       _G.UP2 = va
       while _G.UP2 do wait(1)
       local args = {
           [1] = "AddPoint",
           [2] = "Defends",
           [3] = _G.UPSTATS
       }
       
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
       end
       end)
   
       st:addToggle("Sword", nil, function(va)
           _G.UP3 = va
           while _G.UP3 do wait(1)
           local args = {
               [1] = "AddPoint",
               [2] = "Sword",
               [3] = _G.UPSTATS
           }
           
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end)
   
           st:addToggle("Gun", nil, function(va)
               _G.UP4 = va
               while _G.UP4 do wait(1)
               local args = {
                   [1] = "AddPoint",
                   [2] = "Gun",
                   [3] = _G.UPSTATS
               }
               
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
               end)
   
               st:addToggle("Blox Fruit", nil, function(va)
                   _G.UP5 = va
                   while _G.UP5 do wait(1)
                   local args = {
                       [1] = "AddPoint",
                       [2] = "Demon Fruit",
                       [3] = _G.UPSTATS
                   }
                   
                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                   end
                   end)
   
   
                   st:addTextbox("Added Stats Number", "1", function(value)
                       _G.UPSTATS = value
                       end)
   
   
   local page2 = venyx:addPage("Teleport", 7044226690)
   local tp = page2:addSection("Teleport Island")
--OldWorld 2753915549
--NewWorld 4442272183
   if game.PlaceId == 2753915549 then
   tp:addDropdown("Select Islands", {"WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison", "Magma Village", "Under Water Island", "Fountain City", "Shank Room", "Mob Island"}, function(Value)
       _G.TELEPORTISLAND = Value
   end)
   else
       tp:addDropdown("Select Islands", {"wait"}, function(Value)
       _G.TELEPORTISLAND = Value
   end)
   end
   
   
   
   tp:addButton("Teleport", function()
       if _G.TELEPORTISLAND == nil then
           spawn(function()
               Notification.Notify("Failded !!", "Please, Choose You Location!!", "rbxassetid://4914902889");
             end)
   elseif _G.TELEPORTISLAND == "WindMill" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
     elseif _G.TELEPORTISLAND == "Marine" then  
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
     elseif _G.TELEPORTISLAND == "Middle Town" then  
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
     elseif _G.TELEPORTISLAND == "Jungle" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
     elseif _G.TELEPORTISLAND == "Pirate Village" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
     elseif _G.TELEPORTISLAND == "Desert" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
     elseif _G.TELEPORTISLAND == "Snow Island" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
     elseif _G.TELEPORTISLAND == "MarineFord" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
     elseif _G.TELEPORTISLAND == "Colosseum" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
     elseif _G.TELEPORTISLAND == "Sky Island 1" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
     elseif _G.TELEPORTISLAND == "Sky Island 2" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7874.0908203125, 5545.56640625, -370.306640625)
     elseif _G.TELEPORTISLAND == "Sky Island 3" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7994.10546875, 5756.033203125, -1942.4979248047)
     elseif _G.TELEPORTISLAND == "Prison" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
     elseif _G.TELEPORTISLAND == "Magma Village" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
     elseif _G.TELEPORTISLAND == "Under Water Island" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3876.6374511719, 5.3731470108032, -1896.9306640625)
     elseif _G.TELEPORTISLAND == "Fountain City" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
     elseif _G.TELEPORTISLAND == "Shank Room" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
     elseif _G.TELEPORTISLAND == "Mob Island" then  
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
   
   end
   end)
   
   
   local page5 = venyx:addPage("Devil Fruit", 7044284832)
   local df = page5:addSection("Devil Fruit Sniper")
   local df2 = page5:addSection("Grab Devil Fruit")
   
   
   _G.SelectDevil = nil

   Check = false
   df:addDropdown(
      "Select Devil Fruit",
      {
         "Bomb-Bomb",
         "Spike-Spike",
         "Chop-Chop",
         "Spring-Spring",
         "Smoke-Smoke",
         "Flame-Flame",
         "Ice-Ice",
         "Sand-Sand",
         "Dark-Dark",
         "Light-Light",
         "Rubber-Rubber",
         "Barrier-Barrier",
         "Magma-Magma",
         "Quake-Quake",
         "Human-Human: Buddha",
         "String-String",
         "Bird-Bird: Phoenix",
         "Rumble-Rumble",
         "Paw-Paw",
         "Gravity-Gravity",
         "Dough-Dough",
         "Control-Control",
         "Dragon-Dragon"
            }
      ,function(ply)
         _G.SelectDevil = ply
      end
   )
   df:addToggle("Buy Devil Fruit Sinper",nil,function(value)
      _G.ABDFSNP = value
      while _G.ABDFSNP do wait(10)
       if _G.SelectDevil == nil then

spawn(function()
  Notification.Notify("Failded !!", "Please, Choose You Devil Fruit For Devil Frui Sniper", "rbxassetid://4914902889");
end)
_G.ABDFSNP = false
      elseif _G.ABDFSNP then


local args = {
   [1] = "GetFruits"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(1)
local args = {
   [1] = "PurchaseRawFruit",
   [2] = _G.SelectDevil
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

      end	
   end

   end)
   
   df2:addButton("Grab  All Devil Fruit", function()
       for i,v in pairs(game.Workspace:GetChildren()) do
           if v:IsA "Tool" then
            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
           end
      end
   end)

            
   df2:addToggle("Auto Grab  All Devil Fruit",nil,function(value)
       _G.AUTOBRINGFRUIT = value
       while _G.AUTOBRINGFRUIT do wait()
           for i,v in pairs(game.Workspace:GetChildren()) do
                           if v:IsA "Tool" then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                           end
                      end
       end
   end)














   local page3 = venyx:addPage("Player", 7044233235)
   local plr = page3:addSection("Destroy Player")
   local lplr = page3:addSection("LocalPlayer Player")


PlayerName = {}
   for i,v in pairs(game.Players:GetChildren()) do
     table.insert(PlayerName ,v.Name)
   end
   
   KillPlayer = ""
   
   plr:addDropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
     KillPlayer = plys
   end)
   
    plr:addDropdown("Select Kill Mode", {"Above", "Under", "Behide"}, function(Value)
       if Value == "Above" then
           _G.MODEE = CFrame.new(0,20,0)
       elseif Value == "Under" then
           _G.MODEE = CFrame.new(0,-20,0)
       elseif Value == "Behide" then 
           _G.MODEE = CFrame.new(0,0,20)
           end
   end)
   
   
     plr:addButton("Teleport",function()
   local plr1 = game.Players.LocalPlayer.Character
     local plr2 = game.Players:FindFirstChild(KillPlayer)
     plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
   
     end)
   
   
     plr:addToggle("Spectate Player", nil, function(value)
       Sp = value
       local plr1 = game.Players.LocalPlayer.Character.Humanoid
       local plr2 = game.Players:FindFirstChild(KillPlayer)
       repeat wait(.1)
          game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
       until Sp == false 
       game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
     end)
   
   
   
     plr:addToggle("Kill Player", nil, function(value)
       KILL = value
    
     if KILL == true then
      repeat
         game.Players[KillPlayer].Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[KillPlayer].Character.HumanoidRootPart.CFrame * _G.MODEE
         game:GetService'VirtualUser':CaptureController()
         game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
         wait()
      until KILL == false
      else
         game.Players[KillPlayer].Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.QUESTPOS
   
       
   end
     end)

     local LocalPlayer = game:GetService'Players'.LocalPlayer
     local originalstam = LocalPlayer.Character.Energy.Value
     function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
           if InfinitsEnergy then
              LocalPlayer.Character.Energy.Value = originalstam
           end 
        end)
     end
     spawn(function()
        while wait(.1) do
           if InfinitsEnergy then
              wait(0.3)
              originalstam = LocalPlayer.Character.Energy.Value
              infinitestam()
           end
        end
     end)
     nododgecool = false
     function NoDodgeCool()
        if nododgecool then
           for i,v in next, getgc() do
              if game.Players.LocalPlayer.Character.Dodge then
                 if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                       if tostring(v2) == "0.4" then
                          repeat wait(.1)
                             setupvalue(v,i2,0)
                          until not nododgecool
                       end
                    end
                 end
              end
           end
        end
     end
     





     lplr:addToggle("Dodge No Cooldown",nil,function(Value)
   nododgecool = Value
   NoDodgeCool()
   end)
   
   
     lplr:addToggle("Infinity Stamina", nil, function(value)
       InfinitsEnergy = value
       originalstam = LocalPlayer.Character.Energy.Value
     end)
   

     






   
     local page7 = venyx:addPage("Dungion", 7044233235)
     local raid = page7:addSection("Raid Function")



     raid:addToggle("Auto Raids",nil,function(op)
       if OldWorld == true then
           spawn(function()
               Notification.Notify("Failded!!", "Auto Raid Cna Use In New World Only!!", "rbxassetid://4914902889");
             end)
          else
       openrains = op
       end
    end)
    
    
    raid:addDropdown("Select Raids",{
       "Flame",
       "Ice",
       "Quake",
       "Light",
       "Dark",
       "String",
       "Rumble",
    },
    function(r)
       autoraids = r
    end)
    
    Distance = 500
    raid:addToggle("Kill Arua",false,function(value)
          RaidsArua = value
    end)
    raid:addToggle("Auto Next Island",false,function(value)
       if NewWorld then
          NextIsland = value
       elseif OldWorld then
           spawn(function()
               Notification.Notify("Failded!!", "Auto Raid Cna Use In New World Only!!", "rbxassetid://4914902889");
             end)
       end
    end)
    raid:addToggle("Auto Awakener",false,function(value)
       if NewWorld then
          Awakener = value
       elseif OldWorld then
           spawn(function()
               Notification.Notify("Failded!!", "Auto Raid Cna Use In New World Only!!", "rbxassetid://4914902889");
             end)
       end
    end)
    raid:addButton("Dungeon",function()
       if NewWorld then
          game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
       elseif OldWorld then
           spawn(function()
               Notification.Notify("Failded!!", "Auto Raid Cna Use In New World Only!!", "rbxassetid://4914902889");
             end)
       end
    end)
    raid:addButton("Awakening Room",function()
       if NewWorld then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783, 1.39509034, 1857.00732)
       elseif OldWorld then
           spawn(function()
               Notification.Notify("Failded!!", "Auto Raid Cna Use In New World Only!!", "rbxassetid://4914902889");
             end)
       end
    end)
    
    
    spawn(function()
       while wait(.1) do
          if Awakener or openrains then
                local args = {
                   [1] = "Awakener",
                   [2] = "Check"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                   [1] = "Awakener",
                   [2] = "Awaken"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
          end
       end
    end)
    spawn(function()
       while wait(.1) do
          if NextIsland or openrains then
             game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
             if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,40,0)
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,40,0)
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,40,0)
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,40,0)
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,40,0)
                end
             else
                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
             end
          end
       end
    end)
    spawn(function()
       while wait(.1) do
          if RaidsArua or openrains then
             for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if RaidsArua and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                   pcall(function()
                      repeat wait()
                         v.HumanoidRootPart.Transparency = 0.75
                         v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                         v.HumanoidRootPart.CanCollide = false
                         v.Humanoid.Health = 0
                      until not RaidsArua or not v.Parent or v.Humanoid.Health <= 0
                   end)
                end
             end
          end
       end
    end)
    spawn(function()
       while wait() do
           if openrains and autoraids == "Flame" then
               if game.Workspace.NPCs["Mysterious Scientist"] then
                   local A_1 = "RaidsNpc"
                   local A_2 = "Select"
                   local A_3 = "Flame"
                   local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                   Event:InvokeServer(A_1, A_2, A_3)
                   wait(1)
                   aww = game.Workspace.Map.CircleIsland:FindFirstChild("RaidSummon2").Button.Main.ClickDetector
                   fireclickdetector(aww)
               end
           end
       end
    end)
    spawn(function()
       while wait() do
           if openrains and autoraids == "Flame" then
               if game.Workspace.NPCs["Mysterious Scientist"] then
                   local A_1 = "RaidsNpc"
                   local A_2 = "Select"
                   local A_3 = "Flame"
                   local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                   Event:InvokeServer(A_1, A_2, A_3)
                   wait(1)
                   aww = game.Workspace.Map.CircleIsland:FindFirstChild("RaidSummon2").Button.Main.ClickDetector
                   fireclickdetector(aww)
               end
           end
       end
    end)
    spawn(function()
       while wait() do
           if openrains and autoraids == "Flame" then
               if game.Workspace.NPCs["Mysterious Scientist"] then
                   local A_1 = "RaidsNpc"
                   local A_2 = "Select"
                   local A_3 = "Flame"
                   local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                   Event:InvokeServer(A_1, A_2, A_3)
                   wait(1)
                   aww = game.Workspace.Map.CircleIsland:FindFirstChild("RaidSummon2").Button.Main.ClickDetector
                   fireclickdetector(aww)
               end
           end
       end
    end)
    spawn(function()
       while wait() do
           if openrains and autoraids == "Flame" then
               if game.Workspace.NPCs["Mysterious Scientist"] then
                   local A_1 = "RaidsNpc"
                   local A_2 = "Select"
                   local A_3 = "Flame"
                   local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                   Event:InvokeServer(A_1, A_2, A_3)
                   wait(1)
                   aww = game.Workspace.Map.CircleIsland:FindFirstChild("RaidSummon2").Button.Main.ClickDetector
                   fireclickdetector(aww)
               end
           end
       end
    end)
    spawn(function()
       while wait() do
           if openrains and autoraids == "Flame" then
               if game.Workspace.NPCs["Mysterious Scientist"] then
                   local A_1 = "RaidsNpc"
                   local A_2 = "Select"
                   local A_3 = "Flame"
                   local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                   Event:InvokeServer(A_1, A_2, A_3)
                   wait(1)
                   aww = game.Workspace.Map.CircleIsland:FindFirstChild("RaidSummon2").Button.Main.ClickDetector
                   fireclickdetector(aww)
               end
           end
       end
    end)
    spawn(function()
       while wait() do
           if openrains and autoraids == "Flame" then
               if game.Workspace.NPCs["Mysterious Scientist"] then
                   local A_1 = "RaidsNpc"
                   local A_2 = "Select"
                   local A_3 = "Flame"
                   local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                   Event:InvokeServer(A_1, A_2, A_3)
                   wait(1)
                   aww = game.Workspace.Map.CircleIsland:FindFirstChild("RaidSummon2").Button.Main.ClickDetector
                   fireclickdetector(aww)
               end
           end
       end
    end)





   
   
   -- second page
   local theme = venyx:addPage("Setting", 7040347038)
   local colors = theme:addSection("Colors")
   local UI = theme:addSection("UI")
   

   local themes = {
      Background = Color3.fromRGB(24, 24, 24),
      Glow = Color3.fromRGB(0, 0, 0),
      Accent = Color3.fromRGB(10, 10, 10),
      LightContrast = Color3.fromRGB(20, 20, 20),
      DarkContrast = Color3.fromRGB(14, 14, 14),  
      TextColor = Color3.fromRGB(0, 223, 255)
      }

   for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
   colors:addColorPicker(theme, color, function(color3)
   venyx:setTheme(theme, color3)
   end)
   end
   
   
   
   UI:addButton("Check Time Server", function()
   local GameTime = math.floor(workspace.DistributedGameTime+0.5)
          local Hour = math.floor(GameTime/(60^2))%24
          local Minute = math.floor(GameTime/(60^1))%60
          local Second = math.floor(GameTime/(60^0))%60
       local TIME =   Hour.." : Hour "..Minute.." : Minutes "..Second.." : Second"
   
   spawn(function()
     Notification.Notify("Time Server", TIME, "rbxassetid://4914902889");
   end)
   end)
   
   
   
   UI:addKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
       venyx:toggle()
       end, function()
       end)
   UI:addButton("Destroy UI", function()
       game:GetService("CoreGui")[_G.NAMEUI]:Destroy()
       end)
   -- load
   venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom
   
   _G.STATUSUI = 1

