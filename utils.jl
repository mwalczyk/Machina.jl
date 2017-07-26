function relative_error(a, n)
	#= Returns the relative error between the analytic gradient and the

	Inputs:
	- a: A multidimensional array that represents the analytic gradient
	- n: A multidimensional array that represents the numeric gradient

	Returns the relative error between a and n

	=#
	numerator = abs.(a - n)
	denominator = max.(1e-8, abs.(a) + abs.(n))

	println("numerator: ", numerator)
	println("denominator: ", denominator)
	println("res: ", numerator ./ denominator)
	
	# Return the largest element-wise error in the array
	maximum(numerator ./ denominator)
end
