function digLayer()
    -- Dig the first layer (1x3)
    for i = 1, 3 do
        turtle.dig()
        turtle.forward()
    end
    -- Move back to the start
    for i = 1, 3 do
        turtle.back()
    end

    -- Move up to the second layer
    turtle.digUp()
    turtle.up()

    -- Dig the second layer (1x3)
    for i = 1, 3 do
        turtle.dig()
        turtle.forward()
    end
    -- Move back to the start
    for i = 1, 3 do
        turtle.back()
    end

    -- Move up to the third layer
    turtle.digUp()
    turtle.up()

    -- Dig the third layer (1x3)
    for i = 1, 3 do
        turtle.dig()
        turtle.forward()
    end
    -- Move back to the start
    for i = 1, 3 do
        turtle.back()
    end

    -- Move back down to the start
    turtle.down()
    turtle.down()
end

function digStaircase()
    while true do
        digLayer()

        -- Move forward to the next step position
        turtle.forward()

        -- Move down to the next layer
        turtle.digDown()
        turtle.down()
        turtle.digDown()
        turtle.down()

        -- Wait for 4 seconds
        sleep(4)
    end
end

-- Start digging the staircase
digStaircase()
