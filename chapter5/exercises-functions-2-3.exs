# FizzBuzz
fizzbuzz = fn
    0, 0, _ -> "FizzBuzz"
    0, _, _ -> "Fizz"
    _, 0, _ -> "Buzz"
    _, _, x -> x
end

IO.puts fizzbuzz.(0, 0, 0)
IO.puts fizzbuzz.(0, 1, 0)
IO.puts fizzbuzz.(1, 0, 0)
IO.puts fizzbuzz.(1, 1, 1)

# FizzBuzz Remainder
fizzbuzz_rem = fn n ->
    fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts Enum.join(Enum.map(10..16, fizzbuzz_rem), " ")
