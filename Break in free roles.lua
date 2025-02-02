local isOpen = false  -- Создаем переменную для состояния меню

-- Создаем GUI
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Создаем фрейм для кнопок
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.5, 0)
frame.Position = UDim2.new(0.8, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Visible = false  -- Скрываем фрейм изначально
frame.Parent = gui

-- Создаем функцию для открытия и закрытия меню
local function toggleMenu()
    isOpen = not isOpen  -- Меняем состояние
    frame.Visible = isOpen  -- Устанавливаем видимость фрейма в зависимости от состояния
end

-- Создаем 5 кнопок
for i = 1, 5 do
    local button = Instance.new("TextButton")
    button.Text = (i == 1) and "Swat" or
                  (i == 2) and "Gun" or
                  (i == 3) and "Chips" or
                  (i == 4) and "Sword" or
                  (i == 5) and "Teddy bear" or
                  "Кнопка " .. i  -- Меняем текст первой, второй, третьей, четвертой и пятой кнопок
    button.Size = UDim2.new(1, 0, 0.1, 0)
    button.Position = UDim2.new(0, 0, (i-1)*0.1, 0)
    button.BackgroundColor3 = (i == 1) and Color3.new(0, 0, 1) or
                            (i == 2) and Color3.new(0, 0.5, 1) or
                            (i == 3) and Color3.new(1, 1, 0) or
                            (i == 4) and Color3.new(0.6, 0.3, 0) or
                            (i == 5) and Color3.new(0.6, 0.3, 0) or
                            Color3.new(1, 1, 1)  -- Красим первую кнопку в синий, вторую в голубой, третью в желтый, четвертую и пятую в коричневый
    button.Parent = frame

    -- Добавляем обработчик нажатия на кнопку
    button.MouseButton1Click:Connect(function()
        print("Кнопка " .. (i == 1 and "Swat" or i == 2 and "Gun" or i == 3 and "Chips" or i == 4 and "Sword" or i == 5 and "Teddy bear" or i) .. " была нажата!")  -- Сообщение для кнопок

        -- Выполняем действие при нажатии на кнопку
        if i == 1 then
            local A_1 = "SwatGun"
            local A_2 = true
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
            Event:FireServer(A_1, A_2)
        elseif i == 2 then
            local A_1 = "Gun"
            local A_2 = true
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
            Event:FireServer(A_1, A_2)
        elseif i == 3 then
            local A_1 = "Chips"
            local A_2 = true
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
            Event:FireServer(A_1, A_2)
        elseif i == 4 then
            local A_1 = "Sword"
            local A_2 = true
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
            Event:FireServer(A_1, A_2)
        elseif i == 5 then
            local A_1 = "TeddyBloxpin"
            local A_2 = true
            local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
            Event:FireServer(A_1, A_2)
        end
    end)
end

-- Создаем кнопку для открытия и закрытия меню
local toggleButton = Instance.new("TextButton")
toggleButton.Text = "Открыть/Закрыть меню"
toggleButton.Size = UDim2.new(0.2, 0, 0.1, 0)
toggleButton.Position = UDim2.new(0.8, 0, 0, 0)
toggleButton.BackgroundColor3 = Color3.new(0, 1, 0)
toggleButton.Parent = gui

-- Добавляем обработчик нажатия на кнопку для открытия и закрытия меню
toggleButton.MouseButton1Click:Connect(toggleMenu)
