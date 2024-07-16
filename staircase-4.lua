function digLayer()
    -- Dig the 1x3 layer (3 blocks wide)
    for i = 1, 3 do
        turtle.dig()
        turtle.forward()
    end
    -- Move back to the start
    for i = 1, 3 do
        turtle.back()
    end
end

function digStaircase()
    while true do
        -- Dig the first layer (3 wide)
        digLayer()

        -- Move forward to the next step position
        turtle.forward()

        -- Move down to the next layer
        turtle.digDown()
        turtle.down()

        -- Wait for 4 seconds
        sleep(4)
    end
end

-- Start digging the staircase
digStaircase()
