include("layers.jl")
include("net.jl")
include("optim.jl")

#= Here is a multi-line comment that
keeps going and going and going and
going...
=#
println("Hello, world!")

N, D, M = 3, 4, 5
x = rand(N, D)
w = rand(D, M)
b = ones(1, M)
out = affine_forward(x, w, b)
println(out)
