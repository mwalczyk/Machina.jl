include("gradient_check.jl")
include("layers.jl")
include("net.jl")
include("optim.jl")
include("utils.jl")

# Seed the random number generator
srand(123)

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

out, cache = affine_forward(x, w, b)
correct_out = [[ 1.49834967  1.70660132  1.91485297]
                [3.25553199  3.5141327   3.77273342]]

println(size(out))
println(size(correct_out))
rel_error = relative_error(out, correct_out)
@printf "Relative error: %.14f" rel_error
