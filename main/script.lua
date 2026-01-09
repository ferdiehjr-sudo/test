local Cascade = loadstring(game:HttpGet("https://raw.githubusercontent.com/SquidGurr/CascadeUI/main/src/Cascade.lua"))()

-- Buat Window
local Window = Cascade:Window({
    Title = "Simple GUI",
    Subtitle = "by YourName",
    WindowPosition = "Right"
})

-- Buat Tab
local Tab = Window:Tab({
    Title = "Main",
    Icon = "home"
})

-- Buat Section
local Section = Tab:Section({
    Title = "Features"
})

-- Button
Section:Button({
    Title = "Click Me",
    Callback = function()
        print("Clicked!")
    end
})

-- Toggle
Section:Toggle({
    Title = "Enable Feature",
    Default = false,
    Callback = function(value)
        print("Toggle:", value)
    end
})

-- Slider
Section:Slider({
    Title = "WalkSpeed",
    Min = 16,
    Max = 100,
    Default = 16,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})
