-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0428348929, 0, 0.402949244, 0)
Frame.Size = UDim2.new(0, 100, 0, 31)

UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(234, 8, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, -0.161290318, 0)
TextButton.Size = UDim2.new(0, 100, 0, 41)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Meow"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_2.Parent = TextButton

-- Scripts:

local function XOFUYHL_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local buttonss = script.Parent
	local stuff = false
	local player = game.Players.LocalPlayer
	
	function wires()
		local wire = game.Workspace.PlayerModels:FindFirstChild("Wire")
		local owner = wire.Owner.Value
		if owner == player then
			local end1 = wire.End1
			local end2 = wire.End2
	
			local end1pos = end1.Position
			local end2pos = end2.Position
	
			local final1pos = end1pos + Vector3.new(179,0,322)
			local final2pos = end2pos + Vector3.new(179,0,322)
	
			local args = {
				[1] = game:GetService("ReplicatedStorage"):WaitForChild("ClientItemInfo"):WaitForChild("NeonWirePinky"),
				[2] = {
					[1] = final1pos,
					[2] = final2pos
				},
				[3] = game:GetService("Players").LocalPlayer,
				[4] = wire,
				[5] = true
			}
	
			game:GetService("ReplicatedStorage"):WaitForChild("PlaceStructure"):WaitForChild("ClientPlacedWire"):FireServer(unpack(args))
		end
		
	
		wire.Name = "Done"
		wires()
	end
	
	buttonss.MouseButton1Click:Connect(function()
		if stuff == false then
			wires()
		end
		if stuff == true then
			print("cant be Stopped")
		end
	end)
end
coroutine.wrap(XOFUYHL_fake_script)()
