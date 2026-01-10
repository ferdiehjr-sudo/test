-- Load WindUI Library
local WindUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/Footagesus/WindUI/main/main.lua'))()

-- Buat Window
local Window = WindUI:CreateWindow({
    Title = "My First WindUI", -- Judul window
    Icon = "rbxassetid://10723424710", -- Icon (opsional)
    Author = "Your Name", -- Nama pembuat
    Folder = "WindUIConfig", -- Folder untuk menyimpan config
    Size = UDim2.fromOffset(500, 400), -- Ukuran window (width, height)
    KeySystem = false, -- Set true jika mau pakai key system
    Transparent = false, -- Transparansi background
    Theme = "Dark", -- Theme: "Dark" atau "Light"
    SideBarWidth = 170, -- Lebar sidebar
})

-- Buat Tab
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "home"
})

-- Buat Section di dalam Tab
local Section = MainTab:Section({
    Title = "Main Section"
})

-- Tambahkan Button
Section:Button({
    Title = "Click Me!",
    Description = "Ini adalah button pertama",
    Callback = function()
        print("Button diklik!")
    end
})

-- Tambahkan Toggle
Section:Toggle({
    Title = "Toggle Example",
    Description = "Toggle ini on/off",
    Default = false,
    Callback = function(value)
        print("Toggle sekarang:", value)
    end
})

-- Tambahkan Slider
Section:Slider({
    Title = "Slider Example",
    Description = "Geser untuk ubah nilai",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Slider value:", value)
    end
})

-- Tambahkan Input/Textbox
Section:Input({
    Title = "Input Text",
    Description = "Ketik sesuatu",
    Placeholder = "Tulis disini...",
    Callback = function(text)
        print("Text yang diinput:", text)
    end
})

print("WindUI loaded successfully!")
