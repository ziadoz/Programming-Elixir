# Functions Returning Functions
fun1 = fn -> fn -> "Hello" end end
IO.inspect fun1.()
IO.puts fun1.().()

# Syntax: Multiline
fun1 = fn ->
    fn ->
        "Hello"
    end
end

# Syntax: Parentheses
fun1 = fn -> (fn -> "Hello" end) end

IO.inspect hello = fun1.()
IO.puts hello.()

# Closure Variable Scope
greeter = fn name -> (fn -> "Hello, #{name}" end) end
IO.inspect dynamite_greeter = greeter.("Napoleon Dynamite")
IO.puts dynamite_greeter.()

# Parameterised Functions
add_n = fn n -> (fn other -> n + other end) end
IO.inspect add_two  = add_n.(2)
IO.puts add_two.(5)
IO.inspect add_five = add_n.(5)
IO.puts add_five.(7)

# Functions As Arguments
times_2 = fn n -> n * 2 end
IO.inspect times_2

apply = fn (func, value) -> func.(value) end
IO.puts apply.(times_2, 6)

list = [1, 3, 5, 7, 9]
IO.inspect Enum.map(list, fn elem -> elem * 2 end)
IO.inspect Enum.map(list, fn elem -> elem * elem end)
IO.inspect Enum.map list, fn elem -> elem > 6 end

# & Notation Functions
add_one = &(&1 + 1)
IO.puts add_one.(44)

square = &(&1 * &1)
IO.puts square.(8)

# Optimised to Elixir's IO.puts
speak = &(IO.puts(&1))
IO.inspect speak
speak.("Hello")

# Optimised to Elixir's Float.round
rnd = &(Float.round(&1, &2))
IO.inspect rnd

# Not optimised because the parameters are swapped/wrong way around
rnd = &(Float.round(&2, &1))
IO.inspect rnd

# Optimised down to Erlang abs() method
abs = &(abs(&1))
IO.inspect abs

# Tuple / List Operator Functions
divrem = &{ div(&1, &2), rem(&1, &2) }
IO.inspect divrem.(13, 5)

# Function Arity (number of parameters)
l = &length/1
IO.inspect l

len = &Enum.count/1
IO.inspect len
IO.puts len.([1, 2, 3])

m = &Kernel.min/2 # Alias for an Erlang function
IO.inspect m
IO.puts m.(99, 98)

# More & Notation Functions
list = [1, 2, 3, 4]
IO.inspect Enum.map list, &(&1 + 1)
IO.inspect Enum.map list, &(&1 + &1)
IO.inspect Enum.map list, &(&1 < 3)
