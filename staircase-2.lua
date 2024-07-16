-- Function to dig a 3x3 staircase
function digStaircase3x3(depth)
    for i = 1, depth do
        -- Dig the 3x3 area in front
        for j = 1, 3 do
            for k = 1, 3 do
                -- Dig forward
                while turtle.detect() do
                    turtle.dig()
                    sleep(0.5)
                end
                if k < 3 then
                    turtle.forward()
                end
            end
            
            if j < 3 then
                -- Move back to the start of the row
                turtle.turnRight()
                turtle.forward()
                turtle.turnRight()
                for k = 1, 3 do
                    turtle.back()
                end
                turtle.turnLeft()
                turtle.turnLeft()
            end
        end
        
        -- Move to the next level down
        if i < depth then
            for k = 1, 3 do
                turtle.back()
            end
            turtle.turnRight()
            turtle.forward()
            turtle.turnLeft()
            for k = 1, 3 do
                while turtle.detectDown() do
                    turtle.digDown()
                    sleep(0.5)
                end
                turtle.down()
            end
        end
    end
end

-- Main program
local depth = 10 -- Set the depth of the staircase
digStaircase3x3(depth)
