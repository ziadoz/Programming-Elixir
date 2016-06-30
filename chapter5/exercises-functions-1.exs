# List Concat
list_concat = fn a, b -> a ++ b end
IO.inspect list_concat.([:a, :b], [:c, :d])

# Sum
sum = fn a, b, c -> a + b + c end
IO.puts sum.(1, 2, 3)

# Pair Tuple To List
pair_tuple_to_list = fn {a, b} -> [a, b] end
IO.inspect pair_tuple_to_list.({ 1234, 5678 })
