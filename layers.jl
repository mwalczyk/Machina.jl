function affine_forward(x, w, b)
	#= Computes the forward pass for an affine (fully-connected) layer.

  The input x has shape (N, d_1, ..., d_k) and contains a minibatch of N
  examples, where each example x[i] has shape (d_1, ..., d_k). We will
  reshape each input into a vector of dimension D = d_1 * ... * d_k, and
  then transform it to an output vector of dimension M.

  Inputs:
  - x: A multidimensional array containing input data, of shape (N, d_1, ..., d_k)
  - w: A multidimensional array of weights, of shape (D, M)
  - b: A multidimensional array of biases, of shape (M,)

  Returns a tuple of:
  - out: output, of shape (N, M)
  - cache: (x, w, b)

  =#
	N = size(x)[1]
	D = prod(size(x)[2:end])
	x = reshape(x, N, D)

	out = x * w .+ b
	cache = (x, w, b)
	out, cache
end


function affine_backward(cache, dout)
	x, w, b = cache

	dx =
	dw =
	db =

	(dx, dw, db)
end
