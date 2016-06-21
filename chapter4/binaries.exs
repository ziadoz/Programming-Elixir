bin = << 1, 2 >>
IO.inspect bin
IO.puts byte_size bin

# Binary Modifiers
bin = << 3 :: size(2), 5 :: size(4), 1 :: size(2) >>
IO.inspect bin
IO.puts :io.format("~8.2b~n", :binary.bin_to_list(bin))
IO.puts byte_size bin
