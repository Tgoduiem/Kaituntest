getgenv().Kaitun = true
_G.Team = "Pirates"

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
--- Join Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

-- function()

local Codex2 = {
    "KITTGAMING",
    "ENYU_IS_PRO",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "STRAWHATMAIME",
    "SUB2OFFICIALNOOBIE",
    "SUB2NOOBMASTER123",
    "SUB2DAIGROCK",
    "AXIORE",
    "TANTAIGAMIMG",
    "STRAWHATMAINE",
    "JCWK",
    "FUDD10_V2",
    "SUB2FER999",
    "MAGICBIS",
    "TY_FOR_WATCHING",
    "STARCODEHEO",
    "STAFFBATTLE",
    "ADMIN_STRENGTH",
    "DRAGONABUSE",
}

function RedeemCode(Value)
    game.ReplicatedStorage.Remotes.Redeem:InvokeServer(Value)
end
for i,v in pairs(Codex2) do
    RedeemCode(v)
end

function CheckTorchDimension(DimensionName) 
    DimensionName = DimensionName == "Yama" and "HellDimension" or "HeavenlyDimension" 
    if game.workspace.Map:FindFirstChild(DimensionName) then 
        v3 = game.workspace.Map:FindFirstChild(DimensionName):GetChildren()
        for i, v in pairs(v3) do
            if string.find(v.Name, "Torch") then
                if v.ProximityPrompt.Enabled == true then
                    return v
                end
            end
        end
    end
end  

function check_frozen()
    if game.workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
        return true
    else
        return false
    end
end

if game.PlaceId == 2753915549 then
     Main = true
elseif game.PlaceId == 4442272183 then
     Dressrosa = true
elseif game.PlaceId == 7449423635 then
    Zou = true
else
    game.Players.LocalPlayer:Kick("[Ganteng Hub] Only Support BF")
end 

function CheckQuest()
		local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
		if Main then
			if game.Players.LocalPlayer.Data.Level.Value == 1 or game.Players.LocalPlayer.Data.Level.Value <= 9 or SelectMonster == "" then -- Bandit
				Ms = "Bandit"
				NameQuest = "BanditQuest1"
				QuestLv = 1
				NameMon = "Bandit"
				CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
				CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
				Next_Level_X = 10
			elseif game.Players.LocalPlayer.Data.Level.Value == 10 or game.Players.LocalPlayer.Data.Level.Value <= 100 then
				Ms = "Shanda"
				NameQuest = "SkyExp1Quest"
				QuestLv = 2
				NameMon = "Shanda"
				CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
				CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973)
	
				Next_Level_X = 75
			elseif game.Players.LocalPlayer.Data.Level.Value >= 60 and game.Players.LocalPlayer.Data.Level.Value <= 75-1 or SelectMonster == "Desert Bandit" then
				Ms = "Desert Bandit"
				NameQuest = "DesertQuest"
				QuestLv = 1
				NameMon = "Desert Bandit"
				CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
			elseif game.Players.LocalPlayer.Data.Level.Value >= 75 and game.Players.LocalPlayer.Data.Level.Value <= 90-1 or SelectMonster == "Desert Officer" then
				Ms = "Desert Officer"
				NameQuest = "DesertQuest"
				QuestLv = 2
				NameMon = "Desert Officer"
				CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
				
				SelectMonster = "Desert Bandit"
				Next_Level_X = 90
			elseif game.Players.LocalPlayer.Data.Level.Value >= 90 and game.Players.LocalPlayer.Data.Level.Value <= 100-1 or SelectMonster == "Snow Bandit" then -- Snow Bandits
				Ms = "Snow Bandit"
				NameQuest = "SnowQuest"
				QuestLv = 1
				NameMon = "Snow Bandit"
				CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, 0.000432241941, 0.999844253, -0.0176417865, 0.969202161, -0.00476344163, -0.246220857)
				
				if SelectMonster == "Snow Bandit" then
				else
					Next_Level_X = 100
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 110 then
					SelectBoss_P = "Yeti" 
				end
				
			elseif game.Players.LocalPlayer.Data.Level.Value == 100 or game.Players.LocalPlayer.Data.Level.Value <= 119 or SelectMonster == "Snowman" then -- Snowman
				Next_Level_X = 120
				Ms = "Snowman"
				NameQuest = "SnowQuest"
				QuestLv = 2
				NameMon = "Snowman"
				CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
				
				
				if game.Players.LocalPlayer.Data.Level.Value >= 110 then
					SelectBoss_P = "Yeti" 
				end
				SelectMonster = "Snow Bandit"
			elseif game.Players.LocalPlayer.Data.Level.Value == 120 or game.Players.LocalPlayer.Data.Level.Value <= 174 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
				Ms = "Chief Petty Officer"
				NameQuest = "MarineQuest2"
				QuestLv = 1
				NameMon = "Chief Petty Officer"
				CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
				
				
				if game.Players.LocalPlayer.Data.Level.Value >= 130 then
					SelectBoss_P = "Vice Admiral"
				end
				if SelectMonster == "Chief Petty Officer" then
				else
					Next_Level_X = 175
				end
			elseif SelectMonster == "Sky Bandit" then -- Sky Bandit
				Ms = "Sky Bandit"
				NameQuest = "SkyQuest"
				QuestLv = 1
				NameMon = "Sky Bandit"
				CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, 0.964867651, 7.74418396e-08, 0.262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, 0.964867651)
				
				
			elseif game.Players.LocalPlayer.Data.Level.Value == 175 or game.Players.LocalPlayer.Data.Level.Value <= 190-1 or SelectMonster == "Dark Master" then -- Dark Master
				
				Ms = "Dark Master"
				NameQuest = "SkyQuest"
				QuestLv = 2
				NameMon = "Dark Master"
				CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, 0.465965867, -3.69776352e-08, 0.884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, 0.465965867)
				
				SelectMonster = "Sky Bandit"
				if SelectMonster == "Dark Master" then
				else
					Next_Level_X = 190
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 190 or game.Players.LocalPlayer.Data.Level.Value <= 209 or SelectMonster == "Prisoner" then
				
				Ms = "Prisoner"
				QuestLv = 1
				NameQuest = "PrisonerQuest"
				NameMon = "Prisoner"
				CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
				if game.Players.LocalPlayer.Data.Level.Value >= 220 then
					SelectBoss_P = "Warden" 
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 232 then
					SelectBoss_P = "Chief Warden"
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 242 then
					SelectBoss_P = "Thunder God"
				end
				if SelectMonster == "Prisoner" then
				else
					Next_Level_X = 210
				end
				Bypass_TP_Dis = true
			elseif game.Players.LocalPlayer.Data.Level.Value == 210 or game.Players.LocalPlayer.Data.Level.Value <= 249 or SelectMonster == "Dangerous Prisoner" then
				if game.Players.LocalPlayer.Data.Level.Value >= 220 then
					SelectBoss_P = "Warden" 
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 232 then
					SelectBoss_P = "Chief Warden"
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 242 then
					SelectBoss_P = "Thunder God"
				end
				Ms = "Dangerous Prisoner"
				QuestLv = 2
				NameQuest = "PrisonerQuest"
				NameMon = "Dangerous Prisoner"
				CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
				SelectMonster = "Prisoner"
				Next_Level_X = 250
				Bypass_TP_Dis = true
			elseif game.Players.LocalPlayer.Data.Level.Value == 250 or game.Players.LocalPlayer.Data.Level.Value <= 274 or SelectMonster == "Toga Warrior" then -- Toga Warrior
				
				Ms = "Toga Warrior"
				NameQuest = "ColosseumQuest"
				QuestLv = 1
				NameMon = "Toga Warrior"
				CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
				
				if SelectMonster == "Toga Warrior" then
				else
					Next_Level_X = 275
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 275 or game.Players.LocalPlayer.Data.Level.Value <= 299 or SelectMonster == "Gladiator" then -- Gladiato
				
				Ms = "Gladiator"
				NameQuest = "ColosseumQuest"
				QuestLv = 2
				NameMon = "Gladiator"
				CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
				
				SelectMonster = "Toga Warrior"
				Next_Level_X = 300
			elseif game.Players.LocalPlayer.Data.Level.Value == 300 or game.Players.LocalPlayer.Data.Level.Value <= 324 or SelectMonster == "Military Soldier" then -- Military Soldier
				if game.Players.LocalPlayer.Data.Level.Value >= 350 then
					SelectBoss_P = "Magma Admiral"
				end
				Ms = "Military Soldier"
				NameQuest = "MagmaQuest"
				QuestLv = 1
				NameMon = "Military Soldier"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
				
				if SelectMonster == "Military Soldier" then
				else
					Next_Level_X = 325
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 325 or game.Players.LocalPlayer.Data.Level.Value <= 374 or SelectMonster == "Military Spy" then -- Military Spy
				if game.Players.LocalPlayer.Data.Level.Value >= 350 then
					SelectBoss_P = "Magma Admiral"
				end
				Ms = "Military Spy"
				NameQuest = "MagmaQuest"
				QuestLv = 2
				NameMon = "Military Spy"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
				
				
				SelectMonster = "Military Soldier"
				Next_Level_X = 375
			elseif game.Players.LocalPlayer.Data.Level.Value == 375 or game.Players.LocalPlayer.Data.Level.Value <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior
				if game.Players.LocalPlayer.Data.Level.Value >= 425 then
					SelectBoss_P = "Fishman Lord"
				end
				Ms = "Fishman Warrior"
				NameQuest = "FishmanQuest"
				QuestLv = 1
				NameMon = "Fishman Warrior"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
				CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
				if SelectMonster == "Fishman Warrior" then
				else
					Next_Level_X = 400
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 400 or game.Players.LocalPlayer.Data.Level.Value <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
				if game.Players.LocalPlayer.Data.Level.Value >= 425 then
					SelectBoss_P = "Fishman Lord"
				end
				Ms = "Fishman Commando"
				NameQuest = "FishmanQuest"
				QuestLv = 2
				NameMon = "Fishman Commando"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
				CFrameMon = CFrame.new(61902.7383, 18.4828358, 1478.33936, -0.803795099, 0, -0.594906271, 0, 1, 0, 0.594906271, 0, -0.803795099)
				if SelectMonster == "Fishman Commando" then
				else
					Next_Level_X = 450
				end
				SelectMonster = "Fishman Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 or SelectMonster == "God's Guard" then 
				Ms = "God's Guard"
				NameQuest = "SkyExp1Quest"
				QuestLv = 1
				NameMon = "God's Guards"
				CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
				if SelectMonster == "God's Guard" then
				else
					Next_Level_X = 475
				end
				SelectMonster = "Fishman Commando"
			elseif game.Players.LocalPlayer.Data.Level.Value == 475 or game.Players.LocalPlayer.Data.Level.Value <= 524 or SelectMonster == "Shanda" then
				Ms = "Shanda"
				NameQuest = "SkyExp1Quest"
				QuestLv = 2
				NameMon = "Shandas"
				CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
				CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973)
				if game.Players.LocalPlayer.Data.Level.Value >= 500 then
					SelectBoss_P = "Wysper"
				end
				if SelectMonster == "Shanda" then
				else
					Next_Level_X = 525
				end
				SelectMonster = "God's Guard"
			elseif game.Players.LocalPlayer.Data.Level.Value == 525 or game.Players.LocalPlayer.Data.Level.Value <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
				
				Ms = "Royal Squad"
				NameQuest = "SkyExp2Quest"
				QuestLv = 1
				NameMon = "Royal Squad"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
				
				
				if SelectMonster == "Royal Squad" then
				else
					Next_Level_X = 550
				end
				SelectMonster = "Shanda"
			elseif game.Players.LocalPlayer.Data.Level.Value == 550 or game.Players.LocalPlayer.Data.Level.Value <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
				if game.Players.LocalPlayer.Data.Level.Value >= 575 then
					SelectBoss_P = "Thunder God"
				end
				Ms = "Royal Soldier"
				NameQuest = "SkyExp2Quest"
				QuestLv = 2
				NameMon = "Royal Soldier"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
				
				
				if SelectMonster == "Royal Soldier" then
				else
					Next_Level_X = 625
				end
				SelectMonster = "Royal Squad"
				
			elseif game.Players.LocalPlayer.Data.Level.Value == 625 or game.Players.LocalPlayer.Data.Level.Value <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
				
				Ms = "Galley Pirate"
				NameQuest = "FountainQuest"
				QuestLv = 1
				NameMon = "Galley Pirate"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
				
				if SelectMonster == "Galley Pirate" then
				else
					Next_Level_X = 650
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
				if game.Players.LocalPlayer.Data.Level.Value >= 675 then
					SelectBoss_P = "Cyborg"
				end
				Ms = "Galley Captain"
				NameQuest = "FountainQuest"
				QuestLv = 2
				NameMon = "Galley Captain"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
				
				
				
				SelectMonster = "Galley Pirate"
				Next_Level_X = 9999
			end
		end
		if Dressrosa then
			if game.Players.LocalPlayer.Data.Level.Value == 700 or game.Players.LocalPlayer.Data.Level.Value <= 724 or SelectMonster == "Raider" then -- Raider
				Ms = "Raider" 
				NameQuest = "Area1Quest"
				QuestLv = 1
				NameMon = "Raider"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
				
				if SelectMonster == "Raider" then
				else
					Next_Level_X = 725
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 725 or game.Players.LocalPlayer.Data.Level.Value <= 774 or SelectMonster == "Mercenary" then -- Mercenary
				if game.Players.LocalPlayer.Data.Level.Value >= 750 then
					SelectBoss_P = "Diamond"
				end
				Ms = "Mercenary"
				NameQuest = "Area1Quest"
				QuestLv = 2
				NameMon = "Mercenary"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
				
				if SelectMonster == "Mercenary" then
				else
					Next_Level_X = 775
				end
				SelectMonster = "Raider"
			elseif game.Players.LocalPlayer.Data.Level.Value == 775 or game.Players.LocalPlayer.Data.Level.Value <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate
				Ms = "Swan Pirate"
				NameQuest = "Area2Quest"
				QuestLv = 1
				NameMon = "Swan Pirate"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
				
				if SelectMonster == "Swan Pirate" then
				else
					Next_Level_X = 800
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 800 or game.Players.LocalPlayer.Data.Level.Value <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff
				Ms = "Factory Staff"
				NameQuest = "Area2Quest"
				QuestLv = 2
				NameMon = "Factory Staff"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
				
				if SelectMonster == "Factory Staff" then
				else
					Next_Level_X = 875
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 850 then
					SelectBoss_P = "Jeremy"
				end
				SelectMonster = "Swan Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value == 875 or game.Players.LocalPlayer.Data.Level.Value <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant
				Ms = "Marine Lieutenant"
				NameQuest = "MarineQuest3"
				QuestLv = 1
				NameMon = "Marine Lieutenant"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
				
				if SelectMonster == "Marine Lieutenant" then
				else
					Next_Level_X = 900
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 900 or game.Players.LocalPlayer.Data.Level.Value <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain
				Ms = "Marine Captain"
				NameQuest = "MarineQuest3"
				QuestLv = 2
				NameMon = "Marine Captain"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
				if game.Players.LocalPlayer.Data.Level.Value >= 925 then
					SelectBoss_P = "Fajita"
				end
				if SelectMonster == "Marine Captain" then
				else
					Next_Level_X = 950
				end
				SelectMonster = "Marine Lieutenant"
			elseif game.Players.LocalPlayer.Data.Level.Value == 950 or game.Players.LocalPlayer.Data.Level.Value <= 974 or SelectMonster == "Zombie" then -- Zombie
				Ms = "Zombie"
				NameQuest = "ZombieQuest"
				QuestLv = 1
				NameMon = "Zombie"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
				
				if SelectMonster == "Zombie" then
				else
					Next_Level_X = 975
				end
				Bypass_TP_Dis = true
			elseif game.Players.LocalPlayer.Data.Level.Value == 975 or game.Players.LocalPlayer.Data.Level.Value <= 999 or SelectMonster == "Vampire" then -- Vampire
				Ms = "Vampire"
				NameQuest = "ZombieQuest"
				QuestLv = 2
				NameMon = "Vampire"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
				
				if SelectMonster == "Vampire" then
				else
					Next_Level_X = 1000
				end
				Bypass_TP_Dis = true
				SelectMonster = "Zombie"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1000 or game.Players.LocalPlayer.Data.Level.Value <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper **
				Ms = "Snow Trooper"
				NameQuest = "SnowMountainQuest"
				QuestLv = 1
				NameMon = "Snow Trooper"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
				
				if SelectMonster == "Snow Trooper" then
				else
					Next_Level_X = 1050
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1050 or game.Players.LocalPlayer.Data.Level.Value <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior
				Ms = "Winter Warrior"
				NameQuest = "SnowMountainQuest"
				QuestLv = 2
				NameMon = "Winter Warrior"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
				
				if SelectMonster == "Winter Warrior" then
				else
					Next_Level_X = 1100
				end
				SelectMonster = "Snow Trooper"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1100 or game.Players.LocalPlayer.Data.Level.Value <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate
				Ms = "Lab Subordinate"
				NameQuest = "IceSideQuest"
				QuestLv = 1
				NameMon = "Lab Subordinate"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
				
				if SelectMonster == "Lab Subordinate" then
				else
					Next_Level_X = 1125
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1125 or game.Players.LocalPlayer.Data.Level.Value <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior
				if game.Players.LocalPlayer.Data.Level.Value >= 1150 then
					SelectBoss_P = "Smoke Admiral"
				end
				Ms = "Horned Warrior"
				NameQuest = "IceSideQuest"
				QuestLv = 2
				NameMon = "Horned Warrior"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
				
				if SelectMonster == "Horned Warrior" then
				else
					Next_Level_X = 1175
				end
	
				SelectMonster = "Lab Subordinate"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1175 or game.Players.LocalPlayer.Data.Level.Value <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja
				Ms = "Magma Ninja"
				NameQuest = "FireSideQuest"
				QuestLv = 1
				NameMon = "Magma Ninja"
				CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
				
				if SelectMonster == "Magma Ninja" then
				else
					Next_Level_X = 1200
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1200 or game.Players.LocalPlayer.Data.Level.Value <= 1249 or SelectMonster == "Lava Pirate" then 
				Ms = "Lava Pirate"
				NameQuest = "FireSideQuest"
				QuestLv = 2
				NameMon = "Lava Pirate"
				CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
				CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
				
				if SelectMonster == "Lava Pirate" then
				else
					Next_Level_X = 1250
				end
				SelectMonster = "Magma Ninja"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1250 or game.Players.LocalPlayer.Data.Level.Value <= 1274 or SelectMonster == "Ship Deckhand" then 
				Ms = "Ship Deckhand"
				NameQuest = "ShipQuest1"
				QuestLv = 1
				NameMon = "Ship Deckhand"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
				if SelectMonster == "Ship Deckhand" then
				else
					Next_Level_X = 1275
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1275 or game.Players.LocalPlayer.Data.Level.Value <= 1299 or SelectMonster == "Ship Engineer" then 
				Ms = "Ship Engineer"
				NameQuest = "ShipQuest1"
				QuestLv = 2
				NameMon = "Ship Engineer"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
				if SelectMonster == "Ship Engineer" then
				else
					Next_Level_X = 1300
				end
				SelectMonster = "Ship Deckhand"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1300 or game.Players.LocalPlayer.Data.Level.Value <= 1324 or SelectMonster == "Ship Steward" then 
				Ms = "Ship Steward"
				NameQuest = "ShipQuest2"
				QuestLv = 1
				NameMon = "Ship Steward"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
				if SelectMonster == "Ship Steward" then
				else
					Next_Level_X = 1325
				end
				SelectMonster = "Ship Deckhand"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1325 or game.Players.LocalPlayer.Data.Level.Value <= 1349 or SelectMonster == "Ship Officer" then 
				Ms = "Ship Officer"
				NameQuest = "ShipQuest2"
				QuestLv = 2
				NameMon = "Ship Officer"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
				if SelectMonster == "Ship Officer" then
				else
					Next_Level_X = 1350
				end
				SelectMonster = "Ship Steward"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1350 or game.Players.LocalPlayer.Data.Level.Value <= 1374 or SelectMonster == "Arctic Warrior" then 
				Ms = "Arctic Warrior"
				NameQuest = "FrostQuest"
				QuestLv = 1
				NameMon = "Arctic Warrior"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
				
				if SelectMonster == "Arctic Warrior" then
				else
					Next_Level_X = 1375
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1375 or game.Players.LocalPlayer.Data.Level.Value <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker
				if game.Players.LocalPlayer.Data.Level.Value >= 1400 then
					SelectBoss_P = "Awakened Ice Admiral"
				end
				Ms = "Snow Lurker"
				NameQuest = "FrostQuest"
				QuestLv = 2
				NameMon = "Snow Lurker"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
				
				if SelectMonster == "Snow Lurker" then
				else
					Next_Level_X = 1450
				end
			
				SelectMonster = "Arctic Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1425 or game.Players.LocalPlayer.Data.Level.Value <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier
				Ms = "Sea Soldier"
				NameQuest = "ForgottenQuest"
				QuestLv = 1
				NameMon = "Sea Soldier"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
				
				if SelectMonster == "Sea Soldier" then
				else
					Next_Level_X = 1450
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter
				if game.Players.LocalPlayer.Data.Level.Value >= 1475 then
					SelectBoss_P = "Tide Keeper"
				end
				Ms = "Water Fighter"
				NameQuest = "ForgottenQuest"
				QuestLv = 2
				NameMon = "Water Fighter"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, 0.670276582, 3.66697037e-08, 0.742111444)
				
				if SelectMonster == "Water Fighter" then
				else
					Next_Level_X = 9999
				end
				SelectMonster = "Sea Soldier"
			end
		end
		if Zou then
			if game.Players.LocalPlayer.Data.Level.Value >= 1500 and game.Players.LocalPlayer.Data.Level.Value <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire
				Ms = "Pirate Millionaire"
				NameQuest = "PiratePortQuest"
				QuestLv = 1
				NameMon = "Pirate Millionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				
				if SelectMonster == "Pirate Millionaire" then
				else
					Next_Level_X = 1525
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1525 and game.Players.LocalPlayer.Data.Level.Value <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billionaire
				if game.Players.LocalPlayer.Data.Level.Value >= 1550 then
					SelectBoss_P = "Stone"
				end
				Ms = "Pistol Billionaire"
				NameQuest = "PiratePortQuest"
				QuestLv = 2
				NameMon = "Pistol Billionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				
				if SelectMonster == "Pistol Billionaire" then
				else
					Next_Level_X = 1575 
				end
				
				SelectMonster = "Pirate Millionaire"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1575 and game.Players.LocalPlayer.Data.Level.Value <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior
				Ms = "Dragon Crew Warrior"
				NameQuest = "AmazonQuest"
				QuestLv = 1
				NameMon = "Dragon Crew Warrior"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
				
				if SelectMonster == "Dragon Crew Warrior" then
				else
					Next_Level_X = 1600
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1600 and game.Players.LocalPlayer.Data.Level.Value <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer
				Ms = "Dragon Crew Archer"
				NameQuest = "AmazonQuest"
				QuestLv = 2
				NameMon = "Dragon Crew Archer"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
				
				if SelectMonster == "Dragon Crew Archer" then
				else
					Next_Level_X = 1625
				end
				SelectMonster = "Dragon Crew Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1625 and game.Players.LocalPlayer.Data.Level.Value <= 1649 or SelectMonster == "Female Islander" then 
				Ms = "Female Islander"
				NameQuest = "AmazonQuest2"
				QuestLv = 1
				NameMon = "Female Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
				
				if SelectMonster == "Female Islander" then
				else
					Next_Level_X = 1650
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1650 and game.Players.LocalPlayer.Data.Level.Value <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander
				Ms = "Giant Islander"
				NameQuest = "AmazonQuest2"
				QuestLv = 2
				NameMon = "Giant Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
				if game.Players.LocalPlayer.Data.Level.Value >= 1675 then
					SelectBoss_P = "Island Empress"
				end
				if SelectMonster == "Giant Islander" then
				else
					Next_Level_X = 1700
				end
			
				SelectMonster = "Female Islander"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1700 and game.Players.LocalPlayer.Data.Level.Value <= 1774 or SelectMonster == "Marine Commodore" then -- Marine Commodore
				Ms = "Marine Commodore"
				NameQuest = "MarineTreeIsland"
				QuestLv = 1
				NameMon = "Marine Commodore"
				CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
				if game.Players.LocalPlayer.Data.Level.Value >= 1750 then
					SelectBoss_P = "Kilo Admiral"
				end
				if SelectMonster == "Marine Commodore" then
				else
					Next_Level_X = 1775
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1775 and game.Players.LocalPlayer.Data.Level.Value <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raider
				Ms = "Fishman Raider"
				NameQuest = "DeepForestIsland3"
				QuestLv = 1
				NameMon = "Fishman Raider"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
				
				if SelectMonster == "Fishman Raider" then
				else
					Next_Level_X = 1800
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game.Players.LocalPlayer.Data.Level.Value <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain
				Ms = "Fishman Captain"
				NameQuest = "DeepForestIsland3"
				QuestLv = 2
				NameMon = "Fishman Captain"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
				
				if SelectMonster == "Fishman Captain" then
				else
					Next_Level_X = 1825
				end
				SelectMonster = "Fishman Raider"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1825 and game.Players.LocalPlayer.Data.Level.Value <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate
				Ms = "Forest Pirate"
				NameQuest = "DeepForestIsland"
				QuestLv = 1
				NameMon = "Forest Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
				
				if SelectMonster == "Forest Pirate" then
				else
					Next_Level_X = 1850
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1850 and game.Players.LocalPlayer.Data.Level.Value <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate
				Ms = "Mythological Pirate"
				NameQuest = "DeepForestIsland"
				QuestLv = 2
				NameMon = "Mythological Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
				if game.Players.LocalPlayer.Data.Level.Value >= 1875 then
					SelectBoss_P = "Captain Elephant" 
				end
				if SelectMonster == "Mythological Pirate" then
				else
					Next_Level_X = 1900
				end
			
				SelectMonster = "Forest Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1900 and game.Players.LocalPlayer.Data.Level.Value <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate
				Ms = "Jungle Pirate"
				NameQuest = "DeepForestIsland2"
				QuestLv = 1
				NameMon = "Jungle Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
				
				if SelectMonster == "Jungle Pirate" then
				else
					Next_Level_X = 1925
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1925 and game.Players.LocalPlayer.Data.Level.Value <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate
				Ms = "Musketeer Pirate"
				NameQuest = "DeepForestIsland2"
				QuestLv = 2
				NameMon = "Musketeer Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
				
				if SelectMonster == "Musketeer Pirate" then
				else
					Next_Level_X = 1975
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 1950 then
					SelectBoss_P = "Beautiful Pirate"
				end
				SelectMonster = "Jungle Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1975 and game.Players.LocalPlayer.Data.Level.Value <= 1999 or SelectMonster == "Reborn Skeleton" then
				Ms = "Reborn Skeleton"
				NameQuest = "HauntedQuest1"
				QuestLv = 1
				NameMon = "Reborn Skeleton"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
				
				if SelectMonster == "Reborn Skeleton" then
				elseif not LevelMax then
					Next_Level_X = 2000
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2000 and game.Players.LocalPlayer.Data.Level.Value <= 2024 or SelectMonster == "Living Zombie" then
				Ms = "Living Zombie"
				NameQuest = "HauntedQuest1"
				QuestLv = 2
				NameMon = "Living Zombie"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
				
				if SelectMonster == "Living Zombie" then
				elseif not LevelMax then
					Next_Level_X = 2025
				end
				SelectMonster = "Reborn Skeleton"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2025 and game.Players.LocalPlayer.Data.Level.Value <= 2049  or  SelectMonster == "Demonic Soul" then
				Ms = "Demonic Soul"
				NameQuest = "HauntedQuest2"
				QuestLv = 1
				NameMon = "Demonic"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
				
				if SelectMonster == "Demonic Soul" then
				else
					Next_Level_X = 2050
				end
				SelectMonster = "Living Zombie"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2050 and game.Players.LocalPlayer.Data.Level.Value <= 2074 or SelectMonster == "Posessed Mummy" then
				Ms = "Posessed Mummy"
				NameQuest = "HauntedQuest2"
				QuestLv = 2
				NameMon = "Posessed Mummy"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
				
				if SelectMonster == "Posessed Mummy" then
				else
					Next_Level_X = 2075
				end
				SelectMonster = "Demonic Soul"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2075 and game.Players.LocalPlayer.Data.Level.Value <= 2099 or SelectMonster == "Peanut Scout" then
				Ms = "Peanut Scout"
				NameQuest = "NutsIslandQuest"
				QuestLv = 1
				NameMon = "Peanut Scout"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
				
				if SelectMonster == "Peanut Scout" then
				else
					Next_Level_X = 2100
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2100 and game.Players.LocalPlayer.Data.Level.Value <= 2124 or SelectMonster == "Peanut President" then
				Ms = "Peanut President"
				NameQuest = "NutsIslandQuest"
				QuestLv = 2
				NameMon = "Peanut President"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
				SelectMonster = "Peanut Scout"
				
				if SelectMonster == "Peanut President" then
				else
					Next_Level_X = 2125
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2125 and game.Players.LocalPlayer.Data.Level.Value <= 2149 or SelectMonster == "Ice Cream Chef" then
				Ms = "Ice Cream Chef"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 1
				NameMon = "Ice Cream Chef"
				CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
				CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
				
				if SelectMonster == "Ice Cream Chef" then
				else
					Next_Level_X = 2150
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2150 and game.Players.LocalPlayer.Data.Level.Value <= 2199 or SelectMonster == "Ice Cream Commander" then 
				Ms = "Ice Cream Commander"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 2
				NameMon = "Ice Cream Commander"
				CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
				CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
				
				if SelectMonster == "Ice Cream Commander" then
				else
					Next_Level_X = 2200
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 2175 then
					SelectBoss_P = "Cake Queen"
				end
				SelectMonster = "Ice Cream Chef"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2200 and game.Players.LocalPlayer.Data.Level.Value <= 2224 or SelectMonster == "Cookie Crafter" then 
				Ms = "Cookie Crafter"
				NameQuest = "CakeQuest1"
				QuestLv = 1
				NameMon = "Cookie Crafter"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
				
				if SelectMonster == "Cookie Crafter" then
				elseif not LevelMax then
					Next_Level_X = 2225
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2225 and game.Players.LocalPlayer.Data.Level.Value <= 2249 or SelectMonster == "Cake Guard" then 
				Ms = "Cake Guard"
				NameQuest = "CakeQuest1"
				QuestLv = 2
				NameMon = "Cake Guard"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
				SelectMonster = "Cookie Crafter"
				
				if SelectMonster == "Cake Guard" then
				elseif not LevelMax then
					Next_Level_X = 2250
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2250 and game.Players.LocalPlayer.Data.Level.Value < 2300 or SelectMonster == "Baking Staff" then 
				Ms = "Baking Staff"
				NameQuest = "CakeQuest2"
				QuestLv = 1
				NameMon = "Baking Staff"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
				
				if SelectMonster == "Baking Staff" then
				elseif not LevelMax then
					Next_Level_X = 2300
				end
				
				SelectMonster = "Cookie Crafter"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2300 and game.Players.LocalPlayer.Data.Level.Value < 2325 or SelectMonster == "Cocoa Warrior" then 
				Ms = "Cocoa Warrior"
				NameQuest = "ChocQuest1"
				QuestLv = 1
				NameMon = "Cocoa Warrior"
				CFrameQ = CFrame.new(230.19186401367188, 24.7342586517334, -12202.6572265625)
				CFrameMon = CFrame.new(24.617475509643555, 24.734342575073242, -12227.267578125)
				if SelectMonster == "Cocoa Warrior" then
				else
					Next_Level_X = 2325
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2325 and game.Players.LocalPlayer.Data.Level.Value < 2350 or SelectMonster == "Chocolate Bar Battler" then 
				Ms = "Chocolate Bar Battler"
				NameQuest = "ChocQuest1"
				QuestLv = 2
				NameMon = "Chocolate Bar Battler"
				CFrameQ = CFrame.new(230.19186401367188, 24.7342586517334, -12202.6572265625)
				CFrameMon = CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375)
				if SelectMonster == "Chocolate Bar Battler" then
				else
					Next_Level_X = 2350
				end
				SelectMonster = "Cocoa Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2350 and game.Players.LocalPlayer.Data.Level.Value < 2375 or SelectMonster == "Sweet Thief" then 
				Ms = "Sweet Thief"
				NameQuest = "ChocQuest2"
				QuestLv = 1
				NameMon = "Sweet Thief"
				CFrameQ = CFrame.new(149.1439208984375, 24.7938289642334, -12775.41015625)
				CFrameMon = CFrame.new(51.61184310913086, 24.79380989074707, -12574.873046875)
				if SelectMonster == "Sweet Thief" then
				else
					Next_Level_X = 2375
				end
				SelectMonster = "Chocolate Bar Battler"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2375 and game.Players.LocalPlayer.Data.Level.Value < 2400 or SelectMonster == "Candy Rebel" then 
				Ms = "Candy Rebel" 
				NameQuest = "ChocQuest2"
				QuestLv = 2
				NameMon = "Candy Rebel"
				CFrameQ = CFrame.new(149.1439208984375, 24.7938289642334, -12775.41015625)
				CFrameMon = CFrame.new(28.345605850219727, 24.79380226135254, -12949.5029296875)
				if SelectMonster == "Candy Rebel" then
				else
					Next_Level_X = 2400
				end
				SelectMonster = "Sweet Thief"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2400 and game.Players.LocalPlayer.Data.Level.Value < 2425 or SelectMonster == "Candy Pirate"  then
				Ms = "Candy Pirate" 
				NameQuest = "CandyQuest1"
				QuestLv = 1
				NameMon = "Candy Pirate"
				CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
				CFrameMon = CFrame.new(-1333.9425048828125, 16.907636642456055, -14424.8447265625)
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2425 and game.Players.LocalPlayer.Data.Level.Value < 2550 or SelectMonster == "Snow Demon" then
				Ms = "Snow Demon"
				NameQuest = "CandyQuest1"
				QuestLv = 2
				NameMon = "Snow Demon"
				CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
				CFrameMon = CFrame.new(-963.0213012695312, 16.1071834564209, -14289.576171875)
				if SelectMonster == "Candy Pirate" then
				else
					Next_Level_X = 2551
				end
				SelectMonster = "Candy Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 then
				Ms = "Baking Staff"
				NameQuest = "CakeQuest2"
				QuestLv = 1
				NameMon = "Baking Staff"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
				
				SelectMonster = "Cookie Crafter"
				local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
				if Lp == 'nil' or Lp == nil then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
					Cake_Prince_S:Set(' Cake Prince : Boss Spawn')
				else
					Cake_Prince_S:Set(' Cake Prince : '..Lp)
				end
			end
		end
	end
	

function Buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--//ken
function Ken()
    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
end
--- Equip 
function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                humanoid:UnequipTools()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                return true
            end
        end
    end
    return false
end

spawn(function()
    while wait() do
        if getgenv().Kaitun or _G.NoClip then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                local Noclip = Instance.new("BodyVelocity")
                Noclip.Name = "BodyClip"
                Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                Noclip.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                Noclip.Velocity = Vector3.new(0,0,0)
                for r, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            elseif not getgenv().Kaitun or not AutoSaber and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if getgenv().Kaitun == true then
            CheckQuest()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if getgenv().Kaitun and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    v.HumanoidRootPart.CFrame = PosMon
                    v.Humanoid:ChangeState(14)
                    v.HumanoidRootPart.CanCollide = false
                    v.Head.CanCollide = false
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                elseif getgenv().Kaitun and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    v.HumanoidRootPart.CFrame = PosMon
                    v.Humanoid:ChangeState(14)
                    v.HumanoidRootPart.CanCollide = false
                    v.Head.CanCollide = false
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Kaitun then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if getgenv().Kaitun and PosKaitun then
                    if (v.Name == "Royal Squad") and (v.HumanoidRootPart.Position - PosKaitun.Position).Magnitude <= 400 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.HumanoidRootPart.CFrame = PosKaitun
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Kaitun then
            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
            CheckQuest()
            if not string.find(QuestTitle, NameMon) then
                StartMagnet = false
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            end
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    if _G.BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            Bypass(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                            topos(CFrameQuest)
                    end
                else
                    topos(CFrameQuest)
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "kissed") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name,"kissed Warrior") then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            equip("Melee")
                                            Buso()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                            StartMagnet = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not getgenv().Kaitun or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            elseif string.find(v.Name,"kissed Warrior") == nil then
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                equip("Melee")
                                                Buso()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                StartMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not getgenv().Kaitun or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            topos(CFrameMon)
                            StartMagnet = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Kaitun then
            MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
            if MyLevel >= 15 and MyLevel <= 120 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game.Workspace.Enemies:FindFirstChild("Royal Squad") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Royal Squad" then
                            repeat task.wait()
                                equip("Melee")
                                Buso()                                            
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                PosKaitun = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                StartKaitun = true
                            until not v.Parent or v.Humanoid.Health <= 0 or MyLevel > 120
                        else
                            topos(CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875))
                            if game.ReplicatedStorage:FindFirstChild("Royal Squad") then
                                topos(game.ReplicatedStorage:FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Kaitun then
            if game:GetService("Players").localPlayer.Data.Stats.Melee.Level.Value <= 2550 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",100)
            end
        end
    end
end)
--hop func
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end    
--get saber
AutoSaber = true
spawn(function()
    while task.wait() do
        if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                getgenv().Kaitun = false
                AutoHunterQuest = false
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                equip("Torch")
                                topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                              else
                              topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                equip("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                    topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                               if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                    Buso()
                                                    equip("Melee")
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until v.Humanoid.Health <= 0 or not AutoSaber
                                                 end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                            end
                                        end
                                    end
                                 end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    equip("Relic")
                                    wait(0.5)
                                    topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat task.wait()
                                        equip("Melee")
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or not AutoSaber
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            if not game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                getgenv().Kaitun = true
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Saber") or game.Players.LocalPlayer.Backpack:FindFirstChild("Saber") then
                AutoSaber = false
                getgenv().Kaitun = true
            end
        end
    end
end)
getgenv().AutoSecondSea = true
spawn(function()
    while wait() do
        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 and Sea1 then
            if getgenv().AutoSecondSea then
                pcall(function()
                    if game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then 
                        if game.Workspace.Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" then
                                    if v:FindFirstChild("Humanoid") and v.Huamnoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                        repeat task.wait()
                                            Buso()
                                            equip("Melee")
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 35))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                            _G.NoClip = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or not getgenv().AutoSecondSea
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame*CFrame.new(0,35,0))
                                        end
                                    end
                                else
                                    topos(CFrame.new(4851.732421875, 5.651424884796143, 718.1107788085938))
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                    wait(.5)
                                    equip("Key")
                                    topos(CFrame.new(1348.487060546875, 37.34933853149414, -1326.12158203125))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end
end)

local invokeCount = 0
AutoHunterQuest = true

spawn(function()
    while wait() do
        if AutoHunterQuest then
            local level = game:GetService("Players").LocalPlayer.Data.Level.Value
            if level > 120 and level <= 350 then
                pcall(function()
                    getgenv().Kaitun = false
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
                        local args = { [1] = "EnablePvp" }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        local args = { [1] = "PlayerHunter" }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        invokeCount = invokeCount + 1
                        
                        if invokeCount > 8 then
                            Hop()
                            invokeCount = 0
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i, v in pairs(game.Players:GetChildren()) do
                            if v.Data.SpawnPoint.Value ~= "Default" and v.Data.SpawnPoint.Value ~= "Town" then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
                                    if v.Data.Level.Value >= 20 and v.Data.Level.Value <= 100 then
                                        repeat
                                            wait()
                                            Buso()
                                            equip("Melee")
                                            topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 4, 4))
                                            if (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude < 30 then
                                                Click()
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                wait(2)
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            end
                                        until v.Character.Humanoid.Health <= 0 or AutoHunterQuest == false or level > 350
                                    else
                                        local args = { [1] = "PlayerHunter" }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                else
                                    local args = { [1] = "PlayerHunter" }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            else
                                local args = { [1] = "PlayerHunter" }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                    else
                        AutoHunterQuest = false
                    end
                end)
            end
        end
    end
end)



-- fast
_G.FastAttackDelay = 0.17
_G.FastAttack = true

local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    if _G.FastAttack then
                        STOP.play = function() end
                        a:Play(0.001,0.001,0.001)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.7)
                        a:Stop()
                    else
                        a:Play()
                    end
                end
            end
        end)
    end
end)

function GetBladeHit()
local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local CmrFwLib = CombatFrameworkLib[2]
local p13 = CmrFwLib.activeController
local weapon = p13.blades[1]
if not weapon then 
    return weapon
end
while weapon.Parent ~= game.Players.LocalPlayer.Character do
    weapon = weapon.Parent 
end
return weapon
end
function AttackHit()
local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local CmrFwLib = CombatFrameworkLib[2]
local plr = game.Players.LocalPlayer
for i = 1, 1 do
    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},65)
    local cac = {}
    local hash = {}
    for k, v in pairs(bladehit) do
        if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
            table.insert(cac, v.Parent.HumanoidRootPart)
            hash[v.Parent] = true
        end
    end
    bladehit = cac
    if #bladehit > 0 then
        pcall(function()
            CmrFwLib.activeController.timeToNextAttack = -1
            CmrFwLib.activeController.attacking = false
            CmrFwLib.activeController.blocking = false
            CmrFwLib.activeController.timeToNextBlock = 0
            CmrFwLib.activeController.increment = math.huge
            CmrFwLib.activeController.hitboxMagnitude = 200
            CmrFwLib.activeController.focusStart = 0
            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
        end)
    end
end
end


spawn(function()
    while task.wait(.1) do
        if _G.FastAttack then
            pcall(function()
                repeat task.wait(_G.FastAttackDelay)
                    AttackHit()
                until not _G.FastAttack
            end)
        end
    end
end)
