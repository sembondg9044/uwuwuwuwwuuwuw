	local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")


ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
Frame.BorderColor3 = Color3.fromRGB(103, 103, 103)
Frame.Position = UDim2.new(0.127400771, 0, 0.441073507, 0)
Frame.Size = UDim2.new(0, 150, 0, 45)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 174, 255)
TextLabel.BorderColor3 = Color3.fromRGB(98, 98, 98)
TextLabel.Position = UDim2.new(-0.00285957754, 0, 0.402255952, 0)
TextLabel.Size = UDim2.new(0, 150, 0, 26)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 174, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(98, 98, 98)
TextLabel_2.Position = UDim2.new(-0.00285970047, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 150, 0, 18)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Cash Counter"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 24.000

-- Scripts:

local function OCWQ_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	while wait() do
		pcall(function()
			local amount = 0
			for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
				if v.Name == "MoneyDrop" then
					local cash = string.split(v.BillboardGui.TextLabel.Text,"$")[2]
					if string.match(cash,',') then
						amount = amount + cash:gsub("%,","")
					else
						amount = amount + cash
					end
				end
			end
			local function checking(amount)
				amount = tostring(amount)
				return amount:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
			end
			script.Parent.Text = "$"..checking(amount)..""
		end)
	end
	
end
coroutine.wrap(OCWQ_fake_script)()
