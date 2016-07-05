# Pinned Values As Function Parameters
defmodule Greeter do
    def for(name, greeting) do
        fn
            (^name) -> "#{greeting} #{name}" # Name Variable is Pinned
            (_)     -> "I don't know you"
        end
    end
end

mr_valim = Greeter.for("Jose", "Oi!")

IO.puts mr_valim.("Jose")
IO.puts mr_valim.("Dave")
