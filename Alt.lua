if game:GetService("Players").LocalPlayer.Name == getgenv().Username then

    for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v:FindFirstChild("Window") then
            print("yeah")
            if v:FindFirstChild("Window"):FindFirstChild("Watermark") then
                v:Destroy()
            end
        end
    end

    local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
    local Window = UILib.new("Anime Adventures", game.Players.LocalPlayer.Name, "blah blah blah")
    local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
    local SubButton1 = Category1:Button("Features", "http://www.roblox.com/asset/?id=8395747586")
    local Section1 = SubButton1:Section("Summons", "Left")

    Section1:Button({
        Title = "Summon",
        ButtonName = "Summon 1",
        Description = "Summons 1 unit",
        }, function(value)
        local args = {
            [1] = "EventClover",
            [2] = "gems"
        }

        game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))
    end)

    Section1:Button({
        Title = "Summon",
        ButtonName = "Summon 10",
        Description = "Summons 10 units",
        }, function(value)
        local args = {
            [1] = "EventClover",
            [2] = "gems10"
        }

        game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))
    end)

    local def;

    Section1:Textbox({
        Title = "Summon Amount(10s)",
        Description = "",
        Default = "",
        }, function(value)
            def = value
    end)

    Section1:Button({
        Title = "Summon (Amount)",
        ButtonName = "Summon",
        Description = "",
        }, function(value)
            for i= 1,def do
                local args = {
                    [1] = "EventClover",
                    [2] = "gems10"
                }
        
                game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))
                task.wait(4)
        end
    end)

    local Summer = SubButton1:Section("Summer Event", "Left")

    Summer:Button({
        Title = "Summer",
        ButtonName = "Buy 1 Summer Star",
        Description = "Buys 1 summer star",
        }, function(value)
        local args = {
            [1] = "capsule_summer",
            [2] = "event",
            [3] = "event_shop",
            [4] = "1"
        }

        game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_item_generic:InvokeServer(unpack(args))

    end)

    stars = 0;

    Summer:Textbox({
        Title = "Summer Stars Amount",
        Description = "",
        Default = "",
        }, function(value)
        stars = value
    end)

    Summer:Button({
        Title = "Summer",
        ButtonName = "Buy Summer Stars",
        Description = "Buys summer stars",
        }, function(value)

        for i = 1,stars do
            local args = {
                [1] = "capsule_summer",
                [2] = "event",
                [3] = "event_shop",
                [4] = "1"
            }
    
            game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_item_generic:InvokeServer(unpack(args))
        end
    end)

    Summer:Button({
        Title = "Open Stars",
        ButtonName = "Open Stars",
        Description = "Opens summer stars",
        }, function(value)

        for i = 1,10 do
            local args = {
                [1] = "capsule_summer",
                [2] = {
                    ["use10"] = false
                }
            }

            game:GetService("ReplicatedStorage").endpoints.client_to_server.use_item:InvokeServer(unpack(args))
        end
    end)

    local Section2 = SubButton1:Section("Codes", "Right")

    Section2:Button({
        Title = "Codes",
        ButtonName = "Redeem",
        Description = "Redeems Codes",
        }, function(value)
        local Codes = {"ANNIVERSARY", "BILLION", "SUMMER2023"}

        for _,v in pairs(Codes) do
            local args = {
                [1] = v
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.redeem_code:InvokeServer(unpack(args))
        end
    end)

    local Section3 = SubButton1:Section("Misc", "Right")


    Section3:Button({
        Title = "Disable",
        ButtonName = "Popups",
        Description = "Disable Popup",
        }, function(value)
            if game:GetService("ReplicatedStorage").endpoints.server_to_client:FindFirstChild("show_unit_and_item_rewards") then
                game:GetService("ReplicatedStorage").endpoints.server_to_client.show_unit_and_item_rewards:Destroy()
        end
    end)

    Section3:Button({
        Title = "DestroyUI",
        ButtonName = "Destroys",
        Description = "",
        }, function(value)
            for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do
            if v:FindFirstChild("Window") then
                print("yeah")
                if v:FindFirstChild("Window"):FindFirstChild("Watermark") then
                    v:Destroy()
                end
            end
        end
    end)
end
