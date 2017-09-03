function numeric_gradient(f, x, dout, h=1e-5)
	out, cache = f(x .+ 0.1)
	println(out)
end
