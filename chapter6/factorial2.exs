defmodule Factorial do
    def of(0), do: 1
    def of(n) when n > 0 do
        n * of(n - 1)
    end
end

# IO.puts Factorial.of(3)
# IO.puts Factorial.of(7)
# IO.puts Factorial.of(10)
# IO.puts Factorial.of(1000)
# IO.puts Factorial.of -100 # Fails Guard Clause
