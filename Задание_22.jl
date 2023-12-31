#=
Написать рекурсивную функцию, перемещающую робота на расстояние
вдвое большее исходного расстояния от перегородки, находящейся с заданного
направления (предполагается, что размеры поля позволяют это сделать).
Доработать эту функцию таким образом, чтобы она возвращала значение
true, в случае, если размеры поля позволяют удвоить расстояние, или - значение
false, в противном случае (в этом случае робот должен быть перемещен на
максимально возможное расстояние).
=#

using HorizonSideRobots

include("Functions.jl")

function double_dist(r,side)
    if isborder(r, side)
        return 
    end

    move!(r, side)
    double_dist(r, side)
    move!(r, inverse(side))
    move!(r, inverse(side))

end


r = Robot("for_22.sit", animate = true)

