# ctrl+shift+enter - run current file
# ctrl+j, ctrl+c - clear the console

"""
Computes the PMF (probability mass function)
for a function that computes the pairs of dice
rolls that sum to a particular value.
"""
function two_dice_sum_pmf(sides=6)
  # Create a dictionary that maps all possible pairs
  # to their corresponding sum.
  pairs = Dict((i, j) => (i + j) for i = 1:sides, j = 1:sides)

  # Invert the dictionary: sums => list of pairs.
  pairs_inv = Dict(i => [] for i = 1:(sides * 2))
  for (i, j) in pairs
   push!(pairs_inv[j], i)
  end

  # Compute the PMF. Each outcome is equally likely, with
  # probability 1/(sides*sides). So, in the case of
  # a standard 6-sided dice, each pair has a 1/36 chance
  # of occurring. Therefore, to derive the PMF, we just
  # need to count the number of entries that sum to a
  # particular value and multiply this by the probability
  # measure calculated above.
  pmf = Dict(i => length(j) / 36.0 for (i, j) in pairs_inv)
  pmf
end

pmf = two_dice_sum_pmf()
for key in sort(collect(keys(pmf)))
  println("$key => $(pmf[key])")
end
