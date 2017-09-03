include("gradient_check.jl")
include("layers.jl")
include("net.jl")
include("optim.jl")
include("utils.jl")

# Seed the random number generator
srand(231)

num_inputs = 2
input_shape = (4, 5, 6)
output_dim = 3

input_size = num_inputs * prod(input_shape)
weight_size = output_dim * prod(input_shape)
x = linspace(-0.1, 0.5, input_size)
x = reshape(x, num_inputs, input_shape...)

w = linspace(-0.2, 0.3, weight_size)
w = reshape(w, prod(input_shape), output_dim)

b = linspace(-0.3, 0.1, output_dim)
b = reshape(b, 1, output_dim)

dout = rand(prod(input_shape), output_dim)

out, cache = affine_forward(x, w, b)

numeric_gradient(x -> affine_forward(x, w, b), x, dout)

println("dsads")
#@printf "Relative error: %.20f" rel_error
