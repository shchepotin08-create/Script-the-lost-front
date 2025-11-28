--[[ 
Новогодняя менюшка для Roblox с использованием Rayfield
--]]

-- Загрузка библиотеки Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Новогодняя функция-декор (снег и украшения)
local function NewYearDecor(frame)
    -- Можно добавить простые визуальные элементы Rayfield через уведомления или сами вкладки оформить
    Rayfield:Notify({
        Title = "С Новым Годом!",
        Content = "Пусть даже скрипты сияют как гирлянда!",
        Duration = 5,
        Image = "rbxassetid://11999247" -- ID снежинки/елки/фонаря
    })
end

-- 1. Приветственное окно
Rayfield:Prompt({
    Title = "Новогоднее меню",
    SubTitle = "Добро пожаловать!",
    Content = "Желаем много удачных побед!\nНажмите 'Продолжить' для открытия чит-меню.",
    Actions = {
        {
            Name = "Продолжить",
            Callback = function()
                -- 2. Основа Rayfield Менюшки
                local Window = Rayfield:CreateWindow({
                    Name = "🎄 НОВОГОДНЕЕ МЕНЮ | by AI",
                    LoadingTitle = "Загрузка новогоднего чуда...",
                    LoadingSubtitle = "Улыбнитесь, скоро магия ✨",
                    ConfigurationSaving = {
                        Enabled = false,
                        FolderName = nil,
                        FileName = "NewYearRayfield"
                    },
                    Discord = { Enabled = false },
                    KeySystem = false
                })

                NewYearDecor(Window)

                -- Раздел с кнопками ESP и AIM
                local MainTab = Window:CreateTab("Основное", "rbxassetid://7734068321")

                MainTab:CreateButton({
                    Name = "Включить ESP",
                    Callback = function()
                        -- Твой ESP код здесь
                        Rayfield:Notify({ Title = "ESP", Content = "ESP включен!", Duration = 3 })
                    end,
                })

                MainTab:CreateButton({
                    Name = "Включить AIM",
                    Callback = function()
                        -- Твой AIM код здесь
                        Rayfield:Notify({ Title = "AIM", Content = "AIM включён!", Duration = 3 })
                    end,
                })
            end
        }
    }
})
