using HorizonSideRobots
include("librobot.jl")
function crest!(robot)
    for i in sides
        n = 0
        while !isborder(robot, i)
            putmarker!(robot)
            move!(robot, i)
            n += 1
        end
        putmarker!(robot)
        move_step!(robot, n, inverse(i))
    end
end

