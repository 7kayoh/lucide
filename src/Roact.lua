local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Assets = require(script.Parent.Assets)
local Roact = require(ReplicatedStorage.Packages.Roact)

return function(props)
    local icon = nil
    for name, id in pairs(Assets.icons) do
        if name == props.name:lower() then
            icon = id
        end
    end
    
    assert(icon, "Icon not found: " .. props.name)
    props.name = nil

    return Roact.createElement("ImageLabel", {
        Image = icon,
        ImageColor3 = props.Color,
        ImageTransparency = props.ImageTransparency,
        BackgroundColor3 = props.BackgroundColor3,
        BackgroundTransparency = props.BackgroundTransparency,
        BorderSizePixel = props.BorderSizePixel,
        Size = props.Size,
        Position = props.Position,
        AnchorPoint = props.AnchorPoint,
        Rotation = props.Rotation,
    }, {
        Roact.createElement("UIAspectRatioConstraint", {
            AspectRatio = 1,
        }, {}),
    })
end