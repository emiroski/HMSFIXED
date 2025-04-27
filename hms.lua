local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
    Name = "Hypra's Mic Up Script (Every Thing Can Change At Anytime)",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "HMS",
    LoadingSubtitle = "by Hypra / Suzak",
    Theme = "Serenity", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "HypraMICUP"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Tab = Window:CreateTab("Player", "rewind")

 local Slider = Tab:CreateSlider({
   Name = "FieldOfView",
   Range = {0, 120},
   Increment = 1,
   Suffix = "FOV",
   CurrentValue = 70,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Workspace.Camera.FieldOfView = Value -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})


local Button = Tab:CreateButton({
   Name = "Flashback (Hold C)",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/emiroski/HMSFIXED/refs/heads/main/flashback.lua')))() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Big Baseplate",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/emiroski/HMSFIXED/refs/heads/main/baseplate.lua')))() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "FaceFuck (Press Z)",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/emiroski/HMSFIXED/refs/heads/main/facebang.lua')))() -- The function that takes place when the button is pressed
   end,
})

 local Button = Tab:CreateButton({
   Name = "ReAnimation",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/emiroski/HMSFIXED/refs/heads/main/reanim.lua')))() -- The function that takes place when the button is pressed
   end,
})

 local Slider = Tab:CreateSlider({
    Name = "WalkSpeed Slider",
    Range = {0, 360},
    Increment = 1,
    Suffix = "WS",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Tab = Window:CreateTab("Voice Chat Service", 4483362458) -- Title, Image

 local Button = Tab:CreateButton({
   Name = "Force Join Voice",
   Callback = function()
   game:GetService("VoiceChatService"):joinVoice() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Force Rejoin Voice",
   Callback = function()
   game:GetService("VoiceChatService"):rejoinVoice() -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("Test", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Print Warn",
   Callback = function()
   warn("Warned.") -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Print Hi",
   Callback = function()
   print("Works.") -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Print Executer Level",
   Callback = function()
   printidentity() -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("Scripts", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "ClickTP (Press F)",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/emiroski/HMSFIXED/refs/heads/main/clicktp.lua')))() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Suzak's Annoy",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/emiroski/HMSFIXED/refs/heads/main/annoy.lua')))() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "System Broken",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))() -- The function that takes place when the button is pressed
   end,
})

