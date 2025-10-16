local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Noob-With-Z/Libraries/refs/heads/main/Orion%20Library/Orion.lua"))()

local Window = OrionLib:MakeWindow({
	Name = "Colorfullllllllllllllll!",
	ConfigFolder = "Test",
	SaveConfig = false,
	IntroText = "NoobZ Hub",
	IntroIcon = "bug",
	NoobZ = { -- and have it. lol.
		Privacity = false
	}
})

local SetTab = Window:MakeTab({
	Name = "Settings",
	Icon = "settings",
	PremiumOnly = false
})

local ThemeTab = Window:MakeTab({
	Name = "Theme",
	Icon = "pencil",
	PremiumOnly = false
})

SetTab:AddSection({
	Name = "--Privacity"
})

SetTab:AddToggle({
	Name = "Stream Mode",
	Default = false,
	Callback = function(state)
		OrionLib:StreamMode(state)
	end,
})

ThemeTab:AddSection({
	Name =  "--Themes"
})

local ColorsDropdown = ThemeTab:AddDropdown({
	Name = "Colors",
	Options = {
		"Default",
		"Red",
		"Green",
		"Blue",
		"Purple",
		"White",
		"Dark White",
		"Custom"
	},
	Default = "Default",
	Callback = function(selection)
		OrionLib:Theme(selection:gsub(" ", ""))
	end,
})

ThemeTab:AddSection({
	Name = "--Custom Theme"
})

local ColorPicker

local ChangingAsset

local AssetsDropdown = ThemeTab:AddDropdown({
	Name = "Custom Theme Assets [Custom Theme Only]",
	Options = {
		"Main",
		"Second",
		"Stroke",
		"Divider",
		"Text",
		"TextDark",
	},
	Default = "",
	Callback = function(selection)
		ChangingAsset = selection
		ColorPicker:Reset()
		ColorPicker:SetLabel("Change Color of [" .. ChangingAsset .. "] [Custom Theme Only]")
		ColorPicker:Set(OrionLib:GetCustomThemeValue(ChangingAsset))
	end,
})

ColorPicker = ThemeTab:AddColorpicker({
	Name = "Change Color Of [nil] [Custom Theme Only]",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(color)
		if ChangingAsset then
			local R, G, B
			
			R = math.clamp(color.R * 255, 0, 255)
			G = math.clamp(color.G * 255, 0, 255)
			B = math.clamp(color.B * 255, 0, 255)
			
			local ColorToChange = Color3.fromRGB(R, G, B)
			OrionLib:CustomThemeChange(ChangingAsset, ColorToChange)
		end
	end,
})

ThemeTab:AddSlider({
	Name = "Custom Background Transparency",
	Min = 0,
	Max = 1,
	Default = 0.2,
	Increment = 0.05,
	Color = Color3.fromRGB(200, 200, 200),
	Callback = function(value)
		OrionLib:SetBackgroundTransparency(value)
	end,
})

local Count = 0

ThemeTab:AddButton({
	Name = "Reset Custom Theme [double click]",
	Callback = function()
		Count += 1
		if Count >= 2 then
			OrionLib:ResetCustomTheme()
			Count = 0
		end
		
		task.wait(.4)
		
		Count = 0
	end,
})
