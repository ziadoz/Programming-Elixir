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
