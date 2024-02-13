local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Neon.C Hub - Rainbow Friends")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateToggle("Auto Get Tools", function(value)
loadstring(game:HttpGet("https://pastebin.com/raw/bcvvSYaX"))();
end)

KillingCheats:CreateButton("Made By Neoncat", function()
print("HI")
end)

local MainKillingCheats = PhantomForcesWindow:NewSection("Misc")

MainKillingCheats:CreateToggle("Noclip/Wallhack", function(value)
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)

MainKillingCheats:CreateToggle("Player Esp", function(value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Neoncat765/PinkEsp/main/MainEsp"))();
end)
