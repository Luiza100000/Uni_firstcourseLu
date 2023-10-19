using HorizonSideRobots
include("librobot.jl")
function mark_frame_perimetr!(r::Robot) 

    num_vert = moves!(r, Sud)

    for side in sides
        putmarkers!(r, side)
    end

    moves!(r, Nord, num_vert)
end

function moves!(r::Robot, side::HorizonSide)
    n=0
    while isborder(r, side) == false
        move!(r, side)
        n+=1
    end
    return n
end

function moves!(r::Robot, side::HorizonSide, n::Int)
    for _ in 1:n
        move!(r, side)
    end
end

function putmarkers!(r::Robot, side::HorizonSide)
    while isborder(r, side)==false
        move!(r, side)
        putmarker!(r)
    end
end
