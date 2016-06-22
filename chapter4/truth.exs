# Truth
IO.puts true
IO.puts false
IO.inspect nil

# Refer to Atoms
IO.puts true === :true
IO.puts false === :false
IO.puts nil === :nil

# Operators
a = 1
b = 1.0
IO.puts "a = #{a} and b = #{b}"

IO.puts "a === b"
IO.puts a === b # Strict Equality

IO.puts "a !== b"
IO.puts a !== b # Strict Inequality

IO.puts "a == b"
IO.puts a == b  # Value Equality

IO.puts "a != b"
IO.puts a != b  # Value Inequality

# Comparisons
IO.puts "a > b"
IO.puts a > b

IO.puts "a >= b"
IO.puts a >= b

IO.puts "a < b"
IO.puts a < b

IO.puts "a <= b"
IO.puts a <= b

# Boolean Operators
a = true
b = false
IO.puts "a = #{a} and b = #{b}"

IO.puts "a or b"
IO.puts a or b

IO.puts "a and b"
IO.puts a and b

IO.puts "not a"
IO.puts not a

# Relaxed Boolean Operators
a = 1
b = 1.0
IO.puts "a = #{a} and b = #{b}"

IO.puts "a || b"
IO.puts a || b

IO.puts "a && b"
IO.puts a && b

IO.puts "!a"
IO.puts !a

# Arithmetic Operators
a = 6.8
b = 1
IO.puts "a = #{a} and b = #{b}"

IO.puts "a + b = #{a + b}"
IO.puts "a - b = #{a - b}"
IO.puts "a / b = #{a / b}"
IO.puts "a * b = #{a * b}"
IO.puts "remainder of 11 / 3 = #{rem(11, 3)}"
