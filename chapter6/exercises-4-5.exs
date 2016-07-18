defmodule Exercise do
    def sum(0), do: 0
    def sum(1), do: 1
    def sum(n), do: n + sum(n-1) # Head + Sum of Tail

    def gcd(x, 0), do: x
    def gcd(x, y), do: gcd(y, rem(x, y))
end

# IO.puts Exercise.sum(0)
# IO.puts Exercise.sum(1)
# IO.puts Exercise.sum(10)
# IO.puts Exercise.sum(12)
# IO.puts Exercise.sum(15)

# IO.puts Exercise.gcd(20, 0)
# IO.puts Exercise.gcd(23, 0)
# IO.puts Exercise.gcd(20, 15)
# IO.puts Exercise.gcd(20, 16)
# IO.puts Exercise.gcd(23, 17)
