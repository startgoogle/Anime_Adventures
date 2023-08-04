if game.Players.LocalPlayer.Name == getgenv().Username then
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    
    local Window = Rayfield:CreateWindow({
        Name = "Anime Adventures",
        LoadingTitle = "gay pp",
        LoadingSubtitle = "paravox",
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Pho Long"
        },
        Discord = {
           Enabled = false,
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided",
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })

     local Tab = Window:CreateTab("Alt Features", 4483362458)
     local Section = Tab:CreateSection("Summon")

     local Summon10 = Tab:CreateButton({
        Name = "Summon 10",
        Callback = function()
            local args = {
                [1] = "EventClover",
                [2] = "gems10"
            }
    
            game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))
        end,
     })

     local Summon1 = Tab:CreateButton({
        Name = "Summon 1",
        Callback = function()
        local args = {
            [1] = "EventClover",
            [2] = "gems"
        }

        game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))

        end,
     })


     local Section2 = Tab:CreateSection("Codes")

     local Button = Tab:CreateButton({
        Name = "Redeem Codes",
        Callback = function()
            local Codes = {"ANNIVERSARY", "BILLION", "SUMMER2023"}

            for _,v in pairs(Codes) do
                local args = {
                    [1] = v
                }
            
                game:GetService("ReplicatedStorage").endpoints.client_to_server.redeem_code:InvokeServer(unpack(args))
            end
        end,
     })

     local Section2 = Tab:CreateSection("Summer Stuff")

     local Button = Tab:CreateButton({
        Name = "Buy Summer Stars",
        Callback = function()
            for i = 1,10 do
                local args = {
                    [1] = "capsule_summer",
                    [2] = "event",
                    [3] = "event_shop",
                    [4] = "1"
                }

                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_item_generic:InvokeServer(unpack(args))
            end
        end,
     })

     local Button = Tab:CreateButton({
        Name = "Open Summer Stars",
        Callback = function()
            for i = 1,9 do
                local args = {
                    [1] = "capsule_summer",
                    [2] = {
                        ["use10"] = false
                    }
                }
        
                game:GetService("ReplicatedStorage").endpoints.client_to_server.use_item:InvokeServer(unpack(args))
                task.wait(3)
             end
        end,
     })

     
     local Section3 = Tab:CreateSection("Destroy UI")

     local DestroyUI = Tab:CreateButton({
        Name = "Destroy UI",
        Callback = function()
            Rayfield:Destroy()
        end,
     })
end
