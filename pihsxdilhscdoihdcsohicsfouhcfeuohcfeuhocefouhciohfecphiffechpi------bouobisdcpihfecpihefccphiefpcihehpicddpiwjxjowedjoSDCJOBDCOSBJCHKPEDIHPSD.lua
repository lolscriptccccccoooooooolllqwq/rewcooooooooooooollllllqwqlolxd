_G.autoparrys=false
game.Players.LocalPlayer:SetAttribute("waitparry", false)
game.Players.LocalPlayer:GetAttributeChangedSignal("waitparry"):Connect(function()
   coolaakaa=coolaakaa+1
end)
_G.spam_start=false
--local Players = game:GetService("Players")
function get_playernum()

   local count = 0

   -- 获取所有玩家
   for i, player in ipairs(game.Players:GetPlayers()) do
      local character = player.Character

      if character and character.Parent == game.Workspace.Alive then
         local humanoid = character:FindFirstChildOfClass("Humanoid")

         if humanoid and humanoid.Health > 50 then
            count = count + 1
         end
      end
   end



   return count

end

local function get_MinimumDistanceToOtherPlayers()
   local Players = game:GetService("Players")
   local localPlayer = Players.LocalPlayer
   local localCharacter = localPlayer.Character

   local minDistance = math.huge

   for _, player in ipairs(Players:GetPlayers()) do
      if player ~= localPlayer then
         local character = player.Character
         if character and character:IsDescendantOf(Workspace:FindFirstChild("Alive")) then

            local distance = (character.HumanoidRootPart.Position - localCharacter.HumanoidRootPart.Position).Magnitude
            if distance < minDistance then
               minDistance = distance
            end
         end
      end
   end


   return minDistance
end

--game.Players.LocalPlayer:SetAttribute("waitparry", true)
game:GetService("RunService").Heartbeat:Connect(function()
   if Ball and BallDistance then

      _G.parry_distance=20 + math.clamp(coolaakaa / 3, 0, 25)
      if coolaakaa >= 4 and get_playernum() <=3 and get_MinimumDistanceToOtherPlayers() <= _G.parry_distance and BallDistance <= 55 then
         _G.spam_start=true
        else
         _G.spam_start=false

      end

   end
end)
task.spawn(function()
   while task.wait() do
      if _G.spam_start then
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)


      end


   end
end)
function get_plr()
   return game.Players.LocalPlayer
end
AliveFolder = Workspace:WaitForChild("Alive")
function get_plrChar()
   plrChar = get_plr().Character
   if plrChar then
      return plrChar
   end
end

function get_plrRP()
   plrRP = get_plrChar():FindFirstChild("HumanoidRootPart")

   if plrRP then
      return plrRP
   end
end


aaaaaaaaa=0
pa = true
a1=1
b2=2
c3=3

B = Instance.new("Part",workspace)
SwitchCorner = Instance.new("UICorner")--Shit
B.Name = "nilBox"
SwitchCorner.CornerRadius = UDim.new(9, 9999)
B.Shape="Cylinder"
B.Rotation=Vector3.new(0, 0, 90)
SwitchCorner.Name = "SwitchCorner"--Shit
SwitchCorner.Parent = B--Shit
coolaakaa=0


function get_plr()
   return game.Players.LocalPlayer
end

function get_plrChar()
   plrChar = get_plr().Character
   if plrChar then
      return plrChar
   end
end

function get_plrRP()
   plrRP = get_plrChar():FindFirstChild("HumanoidRootPart")
   if plrRP then
      return plrRP
   end
end




plrRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
function parry()


   task.spawn(function()

      game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)--Instead of being lazy and stupid, press f
   end)


end




game:GetService("StarterGui"):SetCore("SendNotification", {Title="Load successfully",Text="By qqqqqquuuuumU",Icon="http://www.roblox.com/asset/?id=6023426923"})
Duration = 5
game:GetService("StarterGui"):SetCore("SendNotification", {Title="Enjoy it😎",Text="By qqqqqquuuuumU",Icon="http://www.roblox.com/asset/?id=6023426923"})
Duration = 5
game:GetService("StarterGui"):SetCore("SendNotification", {Title="《auto.o pao.o.y》",Text="By HAGo.oU",Icon="http://www.roblox.com/asset/?id=6023426923"})
Duration = 9999999999999999999999999999999999999999999999999999
parrytextGui = Instance.new("ScreenGui", getParent)
parrytext = Instance.new("TextLabel", getParent)
parrytextGui.Name = "parrytextGui"
parrytextGui.Parent = game.CoreGui
parrytextGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
parrytextGui.Enabled = true
parrytext.Name = "parrytext"
parrytext.Parent = parrytextGui
parrytext.BackgroundColor3 = Color3.new(1, 1, 1)
parrytext.BackgroundTransparency = 1
parrytext.BorderColor3 = Color3.new(0, 0, 0)
parrytext.Position = UDim2.new(0,0,00)
parrytext.Size = UDim2.new(0, 500, 0, 530)
parrytext.Font = Enum.Font.GothamSemibold
parrytext.Text = "Ready"
gradient = Instance.new("UIGradient")
gradient.Rotation = 45
gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))}

gradient.Parent = parrytext
parrytext.TextColor3 = Color3.new(1, 1, 1)
parrytext.TextScaled = true
parrytext.TextSize = 45
parrytext.TextWrapped = true
parrytext.Visible = true


task.spawn(function()
   while task.wait() do
      Balls = workspace:WaitForChild("Balls",20)

      Ball = Balls:FindFirstChildOfClass("Part")

      if Ball then

         Tger = Ball:GetAttribute("target")

         if game.Players.LocalPlayer:GetAttribute("waitparry") and Tger then



            if Tger ~= get_plr().Name then
               game.Players.LocalPlayer:SetAttribute("waitparry", false)


            end
         end
      end
   end
end)
coolaakaa=0
print("The script was created by Qumu")
cool=true
eeee=true
parrydis=1
BallSpeed = 1
task.spawn(function()
   while task.wait() do


      Balls = workspace:WaitForChild("Balls",20)

      Ball = Balls:FindFirstChildOfClass("Part")
      plrRP = get_plrRP()


      if not Ball then
         coolaakaa=0
         _G.spam_start=false
         game.Players.LocalPlayer:SetAttribute("waitparry", false)
         Pay="money"--You should have paid for this source code, but it's free open source: (
         getgenv().ClickA=false

        else
         getgenv().ClickA=true
      end




      TargetPlayer = ""


      BallDistance = 0



      plrRP = get_plrRP()
      Ball = Balls:FindFirstChildOfClass("Part")
      if plrRP and Ball then
         Tager = Ball:GetAttribute("target")





         BallDistance = (plrRP.Position - Ball.Position).Magnitude--Distance between character and ball (not good)



         BallSpeed = Ball.Velocity.Magnitude--Ball speed
         parrytext.Text =BallSpeed.."\n"..parrydis.."\n".."BY hazi".."\n"..Tager

      end







      if BallSpeed <=30 then--Judge speed adjustment range
         parrydis=30

        elseif BallSpeed >= 200 and BallSpeed <= 400 then

         parrydis=30+BallSpeed/3
        elseif BallSpeed >= 400 then--Good for a curve ball:)
         parrydis=30+BallSpeed/3


        else

         parrydis=35+BallSpeed/4.5--Ordinary speed
      end






      task.spawn(function()


         plrRP = get_plrRP()
         Ball = Balls:FindFirstChildOfClass("Part")
         Blls = workspace:WaitForChild("Map",20)--Shit
         if Blls and plrRP and Ball then

            Bll = Blls:FindFirstChildOfClass("Model")--Shit
            floor = Bll:FindFirstChildOfClass("MeshPart")--Shit
            pr = get_plrRP()--Get characters
            B.Position = plrRP.Position - Vector3.new(0, 3.177, 0)--A good position:)
            B.Rotation=Vector3.new(0, 0, 90)--Force it (not good)

            B.CanCollide= false--If it's true, then you'll fly to heaven to meet your mother

            B.Color = Color3.fromRGB(a1, b2, c3)--Shit Random Color


            B.Size=Vector3.new(1, parrydis/2, parrydis/2)--Range display(idklol)
            gradient.Rotation = a1


            a1 = a1 + 3
            b2 = b2 + 5
            c3 = c3 + 8

         end

      end)



   end
end)
game:GetService("RunService").RenderStepped:Connect(function()




   if Ball and _G.autoparrys then--Judge the ball
      if BallDistance and Tager and parrydis then--A necessary procedure (think with your head)
         if BallDistance <= parrydis and Tager == get_plr().Name and getgenv().ClickA and not game.Players.LocalPlayer:GetAttribute("waitparry") and BallSpeed > 0 then--A series of conditional judgments (think with your head)
            game.Players.LocalPlayer:SetAttribute("waitparry", true)
            --Prevent your hand from twitching: |

            parry()--Control your hand waving






         end
      end
   end

end)
local NoHyper = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NoHyperLib/main/source.dll"))()

local Window = NoHyper.new("测试"..game.Players.LocalPlayer.DisplayName,"rbxassetid://17365299346","Welcome back!")

Window:NewSize(UDim2.new(0.1,430,0.1,300))
Window:AddYoutube("https://www.youtube.com/your-youtube-channel")
Window:AddWebsite("https://example.com/your-website")
Window:AddDiscord("https://discord.gg/your-discord")

--[[可以填写自己的]]
--[[联系方式链接]]
--[[宣传视频链接]]
--[[频道链接]];

local PlayerLobby = Window:NewTab("cool","earth")

local SpeedJumpGravity = PlayerLobby:NewSection("Maim","positon","left")


--[[positon-这是1个图片的名字]]
--[[positon-如果你想更换这个图片-可以输入以下这几个单词-找到你想要的图片]]
--[[图片单词:"settings"="smartphone"="crown"="save"="hash"]]

--[[该怎么移动功能卡槽]]
--[[left]]--功能卡槽在左边
--[[right]]--功能卡槽在右边

SpeedJumpGravity:AddButton("auto clicker",function()
local UI = Instance.new("ScreenGui");
UI.Name = "UI";
UI.Parent = game.CoreGui;
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
local Switch = Instance.new("TextButton");
local Sw = Instance.new("TextButton");
local SwitchCorner = Instance.new("UICorner");
local Main = Instance.new("Frame");

spam = false;
Switch.Name = "Switch";
Switch.Parent = UI;
Switch.BackgroundColor3 = Color3.fromRGB(128, 0, 255);
Switch.BackgroundTransparency = 0.5;
Switch.Position = UDim2.new(0.2, 0, 0, 0);
Switch.Size = UDim2.new(0, 170, 0, 50);
Switch.Font = Enum.Font.SourceSansBold;
Switch.Text = "AC:OFF";--名字
Switch.TextColor3 = Color3.fromRGB(25, 213, 66);--颜色
Switch.TextSize = 30;
Switch.TextWrapped = true;
Switch.Draggable = true;
SwitchCorner.CornerRadius = UDim.new(0.2, 0);
SwitchCorner.Name = "SwitchCorner";
SwitchCorner.Parent = Switch;
Switch.MouseButton1Click:Connect(function()
   --一个按钮
   if spam then
      Switch.Text ="AC:OFF"
      auto=false
      spam=false
     else
      Switch.Text ="AC:ON"
      auto=true
      spam=true
   end
end)
while task.wait() do
   if spam then
      game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
   end

end
end)

SpeedJumpGravity:AddToggle("auto parry",false,function(Value)
_G.autoparrys=Value
end)



