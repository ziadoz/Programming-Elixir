defmodule Parallel do
    def pmap(collection, func) do
        collection
        |> Enum.map(&(Task.async(fn -> func.(&1) end)))
        |> Enum.map(&Task.await/1)
    end
end

results = Parallel.pmap 1..1000, &(&1 * &1)
IO.inspect results

results = Parallel.pmap 1..1000, fn num -> "FOO - " <> Integer.to_string(num) <> " - BAR" end
IO.inspect results
