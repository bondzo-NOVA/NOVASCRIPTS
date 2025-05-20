local purpleColors = {
    Background = Color3.fromRGB(128, 0, 128),          -- main dark purple background
    BackgroundLight = Color3.fromRGB(180, 50, 180),    -- lighter purple highlights
    TextLight = Color3.fromRGB(240, 240, 240),         -- white-ish text for readability
    TextDark = Color3.fromRGB(100, 0, 100),            -- darker purple text if needed
    Stroke = Color3.fromRGB(90, 0, 90)                 -- darker purple stroke/borders
}

-- Wait for Infinite Yield GUI to load (replace "InfiniteYieldGui" with actual GUI name)
local gui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("InfiniteYieldGui")

local function recolorGui(guiObject)
    for _, obj in pairs(guiObject:GetDescendants()) do
        if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
            obj.TextColor3 = purpleColors.TextLight
        end
        if obj:IsA("Frame") or obj:IsA("ScrollingFrame") or obj:IsA("ImageLabel") then
            obj.BackgroundColor3 = purpleColors.Background
            if obj:FindFirstChild("UIStroke") then
                obj.UIStroke.Color = purpleColors.Stroke
            end
        end
        if obj:IsA("UIStroke") then
            obj.Color = purpleColors.Stroke
        end
    end
end

recolorGui(gui)
