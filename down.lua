-- Dig down and refuel script for a ComputerCraft turtle

while true do
    -- Check fuel level
    if turtle.getFuelLevel() < 10 then
        -- Select the first slot for fuel
        turtle.select(1)
        -- Refuel the turtle
        turtle.refuel(1)
    end

    -- Try to dig down
    if not turtle.digDown() then
        print("Unable to dig further.")
        break
    end

    -- Move the turtle down
    if not turtle.down() then
        print("Cannot move down.")
        break
    end
end
