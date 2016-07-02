# Multiple Bodies
handle_open = fn
  {:ok, file}  -> "Read Data: #{IO.read(file, :line)}"
  {_,   error} -> "Error: #{:file.format_error(error)}"
end

IO.inspect handle_open.(File.open("example.txt")) # File Exists
IO.inspect handle_open.(File.open("foobar.txt"))  # File Does Not Exist
