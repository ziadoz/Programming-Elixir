# Lists
concat = [ 1, 2, 3 ] ++ [ 4, 5, 6 ]
IO.inspect concat

diff = [ 1, 2, 3, 4 ] -- [ 2, 4 ]
IO.inspect diff

membership = 1 in [ 1, 2, 3, 4 ]
IO.puts membership

membership = "wombat" in [ 1, 2, 3, 4 ]
IO.puts membership

# Keyword Lists
kwl = [ name: "Dave", city: "Dallas", likes: "Programming" ]
IO.inspect kwl

no_brackets = fn (kwl) -> IO.inspect kwl end
no_brackets.(use_transction: true, logging: "HIGH")

IO.inspect [1, fred: 1, dave: 1]
IO.inspect {1, fred: 1, dave: 1}