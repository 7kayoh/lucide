local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Packages = ReplicatedStorage.Packages
local Fusion = if Packages:FindFirstChild("Fusion") then require(script.Fusion) else nil
local Roact = if Packages:FindFirstChild("Roact") then require(script.Fusion) else nil

return {
    Icons = require(script.Assets).icons,
    Fusion = Fusion,
    Roact = Roact,
}

