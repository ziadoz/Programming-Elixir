# Basic Function
sum = fn (a, b) -> a + b end
IO.inspect sum
IO.puts sum.(1, 2)

# No Parameter Brackets
sum = fn a, b -> a + b end
IO.inspect sum
IO.puts sum.(1, 2)

# No Parameters
greet = fn -> IO.puts "Hello, World!" end
IO.inspect greet
IO.puts greet.()

# Pattern Matching
swap = fn {a, b} -> {b, a} end
IO.inspect swap
IO.inspect swap.({6, 8})
