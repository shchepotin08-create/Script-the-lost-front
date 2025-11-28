--[[
Новогоднее новогоднее меню для Roblox: Rayfield, кнопки ESP/AIM, работает без PROMPT, сразу открывает менюшку. 
Всё максимально совместимо с executor'ами. Ошибки выводятся через print.
--]]

local success, err = pcall(function()
    -- Загрузка Rayfield
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    
    -- Главное окно
    local Window = Rayfield:CreateWindow({
        Name = "🎄 Новогоднее меню | by AI",
        LoadingTitle = "С новым годом! Загружается магия...",
        LoadingSubtitle = "2025",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil,
            FileName = "NewYearRayfield"
        },
        Discord = {Enabled = false},
        KeySystem = false
    })

    -- Новогодний раздел (ёлка и подарок - иконки с новогодним стилем)
    local MainTab = Window:CreateTab("❄️ Основное", "rbxassetid://9456687387")

    MainTab:CreateSection("Добро пожаловать! Зима, праздник, Roblox!")
    MainTab:CreateParagraph({
        Title = "С Наступающим!",
        Content = "Пусть удача и хорошее настроение будут с тобой в каждой игре!\n\nМеню сделано AI специально под тебя. \n2025"
    })
    MainTab:CreateLabel("Ниже выбери нужную функцию:")

    MainTab:CreateButton({
        Name = "Включить ESP (стены не преграда)",
        Callback = function()
            -- Вставь сюда свой ESP-код
            Rayfield:Notify({ Title = "ESP", Content = "ESP включён!", Duration = 3 })
        end
    })
    
    MainTab:CreateButton({
        Name = "Включить AIM (наведение)",
        Callback = function()
            -- Вставь сюда свой AIM-код
            Rayfield:Notify({ Title = "AIM", Content = "AIM включён!", Duration = 3 })
        end
    })

    -- Для красоты: уведомление, что меню реально запустилось
    Rayfield:Notify({
        Title = "Новогоднее меню!",
        Content = "Добро пожаловать в зимнюю сказку!",
        Duration = 4,
        Image = "rbxassetid://11999247"
    })
end)

if not success then
    print("[NewYearRayfield] Ошибка: ", err)
end
