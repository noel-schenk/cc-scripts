-- Function to dig downwards in a staircase pattern
function digStaircase(depth)
    for i = 1, depth do
        -- Dig the block in front
        while turtle.detect() do
            turtle.dig()
            sleep(0.5)
        end
        -- Move forward
        turtle.forward()

        -- Dig down
        while turtle.detectDown() do
            turtle.digDown()
            sleep(0.5)
        end
        -- Move down
        turtle.down()
        
        -- Dig the block above
        while turtle.detectUp() do
            turtle.digUp()
            sleep(0.5)
        end
    end
end

-- Main program
local depth = 10 -- Set the depth of the staircase
digStaircase(depth)
