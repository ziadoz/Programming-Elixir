defmodule Chop do
    def guess(actual, range = low..high) when actual >= low and actual <= high do
        # We need to add the low and high together here to shift the next guess up if it was previously too small.
        # If we don't do this, it will get stuck because the guess will eventually have no room to move.
        guess = div(low + high, 2)
        ask(guess)
        try_guess(actual, guess, range)
    end

    # Guess is correct
    defp try_guess(actual, actual, _) do
        IO.puts "Yes, it's #{actual}"
        actual
    end

    # Guess is too small
    defp try_guess(actual, guess, _low..high) when guess < actual do
        guess(actual, guess + 1..high)
    end

    # Guess is too big
    defp try_guess(actual, guess, low.._high) when guess > actual do
        guess(actual, low..guess - 1)
    end

    # Display the current guess
    defp ask(guess) do
        IO.puts "Is it #{guess}"
        guess
    end
end

# Chop.guess(273, 1..1000)
