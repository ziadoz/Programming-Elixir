import System

IO.inspect({ 1, 2 })
IO.inspect({ :ok, 42, "next" })

{ status, count, action } = { :ok, 42, "next" }
IO.puts(status)
IO.puts(count)
IO.puts(action)

{ status, file } = File.open Path.join([cwd(), "tuples.exs"])
IO.puts(status)
IO.inspect(file)


{ :ok, file } = File.open "foobar"