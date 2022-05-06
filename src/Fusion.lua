local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Assets = require(script.Parent.Assets)
local Fusion = require(ReplicatedStorage.Packages.Fusion)

return function(props)
    local icon = nil
    for name, id in pairs(Assets.icons) do
        if name == props.name:lower() then
            icon = id
        end
    end

    assert(icon, "Icon not found: " .. props.name)

    local comp = Fusion.New "ImageLabel" {
        Image = icon,
        ImageColor3 = Color3.new(1, 1, 1),
        Size = UDim2.fromOffset(25, 25),

        [Fusion.Children] = {
            Fusion.New "UIAspectRatioConstraint" {
                AspectRatio = 1,
            },
        },
    }

    return Fusion.Hydrate(comp)(props)
end