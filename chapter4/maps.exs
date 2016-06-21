# String Keys
states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
IO.inspect states

# Tuple Keys
responses = %{ { :error, :enoent } => :fatal, { :error, :busy } => :retry }
IO.inspect responses

# Atom Keys
colours = %{ :red => 0xff0000, :green => 0x00ff00, :blue => 0x0000ff }
IO.inspect colours

# Mixed Keys
mixed = %{ "one" => 1, :two => 2, { 1, 1, 1} => 3 }
IO.inspect mixed

# Atom Shortcut Keys
colours_shortcut = %{ red: 0xff0000, green: 0x00ff00, blue: 0x0000ff }
IO.inspect colours_shortcut
IO.puts colours == colours_shortcut

# Expression Keys
name = "José Valim"
IO.puts name

names = %{ String.downcase(name) => name }
IO.inspect names

# Multiple Keys
multiple = %{ foo: "bar", foo: "baz" }
IO.inspect multiple

# Accessing Maps (Square Bracket)
states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
IO.puts states["AL"]
IO.puts states["WI"]
IO.inspect states["TX"]

responses = %{ { :error, :enoent } => :fatal, { :error, :busy } => :retry }
IO.puts responses[{:error, :enoent}]

# Accessing Atom Maps (Square Bracket or Dot Notation)
colours = %{ red: 0xff0000, green: 0x00ff00, blue: 0x0000ff }
IO.puts colours[:red]
IO.puts colours.green
IO.puts colours.blue

# Dot Notation KeyErrors
try do
  IO.puts colours.foobar
rescue
  e in KeyError -> IO.puts "The key '#{e.key}' does not exist!"
end
