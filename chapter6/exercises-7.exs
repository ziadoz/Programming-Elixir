# Convert float to two decimal digits
# :io.format("~.2f", [1.234567])
IO.puts to_string :io_lib.format("~.2f", [1.234567])

# Get OS environment variable value
IO.puts System.get_env("USER")

# Return the extension of a filename
IO.puts Path.extname "funky/gibbon.exs"

# Return the current process's working directory
IO.puts System.cwd
IO.puts Path.basename(System.cwd)

# Convert a string of JSON into an Elixir data structure
# Find a module, but don't install it
# json = "{ foo: bar, bloop: bleep }"
# Poison.decode json

# Execute a shell command from Elixir
{result, _} = System.cmd "echo", ["I am the echo shell command. Hear me roar!"]
IO.puts String.trim(result)

cmd = "whoami"
{result, code} = System.cmd cmd, []
IO.puts "Ran #{cmd} which returned '#{String.trim(result)}' with exit status code #{code}"
