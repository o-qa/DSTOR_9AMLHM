local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualUser = game:GetService("VirtualUser")

if CoreGui:FindFirstChild("AntiAfkByAlf7lDstor") then
    CoreGui["AntiAfkByAlf7lDstor"]:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AntiAfkByAlf7lDstor"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui
if syn and syn.protect_gui then syn.protect_gui(ScreenGui) end

-- شاشة القفل (عريضة وبالنص)
local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 600, 0, 250)
KeyFrame.Position = UDim2.new(0.5, -300, 0.5, -125)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = ScreenGui
Instance.new("UICorner", KeyFrame).CornerRadius = UDim.new(0, 12)

local KeyBg = Instance.new("ImageLabel")
KeyBg.Size = UDim2.new(1, 0, 1, 0)
KeyBg.BackgroundTransparency = 1
KeyBg.Image = "rbxassetid://126064221792267"
KeyBg.ScaleType = Enum.ScaleType.Stretch
KeyBg.Parent = KeyFrame
Instance.new("UICorner", KeyBg).CornerRadius = UDim.new(0, 12)

local KeyOverlay = Instance.new("Frame")
KeyOverlay.Size = UDim2.new(1, 0, 1, 0)
KeyOverlay.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
KeyOverlay.BackgroundTransparency = 0.3
KeyOverlay.BorderSizePixel = 0
KeyOverlay.Parent = KeyFrame
Instance.new("UICorner", KeyOverlay).CornerRadius = UDim.new(0, 12)

local KeyFrameStroke = Instance.new("UIStroke", KeyFrame)
KeyFrameStroke.Color = Color3.fromRGB(200, 20, 20)
KeyFrameStroke.Thickness = 2
KeyFrameStroke.Transparency = 0.2

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 30)
KeyTitle.Position = UDim2.new(0, 0, 0, 30)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "حط المفتاح هنا"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 22
KeyTitle.ZIndex = 2
KeyTitle.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.8, 0, 0, 50)
KeyBox.Position = UDim2.new(0.1, 0, 0, 80)
KeyBox.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
KeyBox.PlaceholderText = "ادخل المفتاح..."
KeyBox.PlaceholderColor3 = Color3.fromRGB(130, 130, 140)
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.Font = Enum.Font.GothamBold
KeyBox.TextSize = 18
KeyBox.ZIndex = 2
KeyBox.Parent = KeyFrame
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0, 8)
local BoxStroke = Instance.new("UIStroke", KeyBox)
BoxStroke.Color = Color3.fromRGB(60, 60, 70)
BoxStroke.Thickness = 1

local KeyBtn = Instance.new("TextButton")
KeyBtn.Size = UDim2.new(0.4, 0, 0, 45)
KeyBtn.Position = UDim2.new(0.3, 0, 0, 150)
KeyBtn.BackgroundColor3 = Color3.fromRGB(35, 10, 10) 
KeyBtn.Text = "دخول"
KeyBtn.TextColor3 = Color3.fromRGB(220, 30, 30)
KeyBtn.Font = Enum.Font.GothamBold
KeyBtn.TextSize = 20
KeyBtn.ZIndex = 2
KeyBtn.Parent = KeyFrame
Instance.new("UICorner", KeyBtn).CornerRadius = UDim.new(0, 8)

local KeyBtnStroke = Instance.new("UIStroke", KeyBtn)
KeyBtnStroke.Color = Color3.fromRGB(180, 20, 20)
KeyBtnStroke.Thickness = 1.5

KeyBtn.MouseEnter:Connect(function()
    KeyBtn.BackgroundColor3 = Color3.fromRGB(50, 15, 15)
    KeyBtnStroke.Color = Color3.fromRGB(255, 50, 50)
end)
KeyBtn.MouseLeave:Connect(function()
    KeyBtn.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
    KeyBtnStroke.Color = Color3.fromRGB(180, 20, 20)
end)

-- الواجهة الرئيسية
local MainBox = Instance.new("Frame")
MainBox.Size = UDim2.new(0, 280, 0, 110)
MainBox.Position = UDim2.new(0.5, -140, 0.5, -55)
MainBox.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainBox.BorderSizePixel = 0
MainBox.Active = true
MainBox.Draggable = true
MainBox.Visible = false
MainBox.Parent = ScreenGui
Instance.new("UICorner", MainBox).CornerRadius = UDim.new(0, 12)

local BgImage = Instance.new("ImageLabel")
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.BackgroundTransparency = 1
BgImage.Image = "rbxassetid://134613712372019"
BgImage.ScaleType = Enum.ScaleType.Crop
BgImage.Parent = MainBox
Instance.new("UICorner", BgImage).CornerRadius = UDim.new(0, 12)

local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.45
Overlay.BorderSizePixel = 0
Overlay.Parent = MainBox
Instance.new("UICorner", Overlay).CornerRadius = UDim.new(0, 12)

local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 35)
TopBar.BackgroundTransparency = 1
TopBar.Parent = MainBox
TopBar.ZIndex = 3

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -20, 0, 30)
Title.Position = UDim2.new(0, 10, 0, 5)
Title.BackgroundTransparency = 1
Title.Text = "ANTIAFK ALF7L DSTOR"
Title.TextColor3 = Color3.fromRGB(0, 150, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.ZIndex = 4
Title.Parent = TopBar

local Stroke = Instance.new("UIStroke", MainBox)
Stroke.Color = Color3.fromRGB(200, 20, 20)
Stroke.Thickness = 1.5
Stroke.Transparency = 0.2

local TimerLbl = Instance.new("TextLabel")
TimerLbl.Size = UDim2.new(1, -20, 0, 30)
TimerLbl.Position = UDim2.new(0, 10, 0, 55)
TimerLbl.BackgroundTransparency = 1
TimerLbl.Text = "00:00:00"
TimerLbl.TextColor3 = Color3.fromRGB(200, 30, 30)
TimerLbl.Font = Enum.Font.GothamBold
TimerLbl.TextSize = 20
TimerLbl.ZIndex = 2
TimerLbl.Parent = MainBox

local isActivated = false

KeyBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == "Dstor-TOP1" then
        KeyFrame:Destroy()
        MainBox.Visible = true
        
        if not isActivated then
            isActivated = true
            
            LocalPlayer.Idled:Connect(function()
                VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                task.wait(1)
                VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)

            task.spawn(function()
                local seconds = 0
                while task.wait(1) do
                    seconds = seconds + 1
                    local hrs = math.floor(seconds / 3600)
                    local mins = math.floor((seconds % 3600) / 60)
                    local secs = seconds % 60
                    TimerLbl.Text = string.format("%02d:%02d:%02d", hrs, mins, secs)
                end
            end)
        end
    else
        KeyBox.Text = ""
        KeyBox.PlaceholderText = "مفتاح خاطئ!"
        KeyBox.PlaceholderColor3 = Color3.fromRGB(200, 30, 30)
        local origPos = KeyFrame.Position
        for i = 1, 4 do
            KeyFrame.Position = origPos + UDim2.new(0, 0.01, 0, 0)
            task.wait(0.05)
            KeyFrame.Position = origPos - UDim2.new(0, 0.01, 0, 0)
            task.wait(0.05)
        end
        KeyFrame.Position = origPos
    end
end)

KeyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        KeyBtn:Fire("MouseButton1Click")
    end
end)
