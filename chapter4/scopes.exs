# With Expression Scope
import System

content = "Now is the time"

lp = with {:ok, file}    = File.open(Path.join([cwd(), "passwd"])),
           content       = IO.read(file, :all), # Different Scope
           :ok           = File.close(file),
           [_, uid, gid] = Regex.run(~r/_lp:.*?:(\d+):(\d+)/, content)
    do
           "Group: #{gid}, User: #{uid}"
    end

IO.puts lp
IO.puts content

# Match
IO.puts with [a|_] <- [1, 2, 3], do: a
IO.inspect with [a|_] <- nil, do: a

# With Expression Match
result = with {:ok, file}     = File.open(Path.join([cwd(), "passwd"])),
              content        = IO.read(file, :all), # Different Scope
              :ok            = File.close(file),
              [_, uid, gid] <- Regex.run(~r/xxx:.*?:(\d+):(\d+)/, content)
        do
              "Group: #{gid}, User: #{uid}"
        end

IO.inspect result

# Do Shortcut
values = [1, 2, 3, 4, 5]

mean = with count = Enum.count(values),
            sum   = Enum.sum(values),
       do: sum / count

IO.puts mean
