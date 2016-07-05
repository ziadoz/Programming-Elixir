# Rewrite Using & Notation
IO.inspect Enum.map [1, 2, 3, 4], fn x -> x + 2 end # Before
IO.inspect Enum.map [1, 2, 3, 4], &(&1 + 2)         # After

Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end    # Before
Enum.each [1, 2, 3, 4], &IO.inspect/1               # After
