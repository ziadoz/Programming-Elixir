# Nested Modules
defmodule Outer do
    defmodule Inner do
        def inner_func do
            IO.puts "Inner module function"
        end
    end

    def outer_func do
        Inner.inner_func
        IO.puts "Outer module function"
    end
end

Outer.Inner.inner_func
Outer.outer_func

defmodule Foo.Bar do
    def dot_nested_module_func do
        IO.puts "Dot nested module function"
    end
end

Foo.Bar.dot_nested_module_func

# Module Imports
defmodule ImportModule do
    def func1 do
        List.flatten [1, [2, 3], 4]
    end

    def func2 do
        # Same method as above, but List.flatten is imported with the function scope.
        # Can also do except: or only: :functions/:macros
        import List, only: [flatten: 1]
        flatten [1, [2, 3], 4]
    end
end

IO.inspect ImportModule.func1
IO.inspect ImportModule.func2

# Module Aliases
defmodule My.Other.Module.Parser do
    def parse(source) do
        source
    end
end

defmodule My.Other.Module.Runner do
    def execute(source) do
        source
    end
end

defmodule AliasModule do
    def compile_and_go(source) do
        # alias My.Other.Module.Parser, :as Parser # Alias the module with a specific name.
        # alias My.Other.Module.Runner, :as Runner

        # alias My.Other.Module.Parser             # Last part of module used by default.
        # alias My.Other.Module.Runner

        alias My.Other.Module.{Parser, Runner}     # Same as above, but for modules in the same namespace.

        source
        |> Parser.parse()
        |> Runner.execute()
    end
end

IO.inspect AliasModule.compile_and_go([:a, :b, :c, :d])

# Module Attributes
# Use for configuration and metadata only.
defmodule AtttributeModule do
    @author "Dave Thomas"      # Attribute Module. Top level only.

    def get_author do
        @author
    end
end

IO.puts AtttributeModule.get_author

defmodule AnotherAtttributeModule do
    @attr "one"               # Attribute Module. Value in function is what is defined at that point in time.
    def first, do: @attr

    @attr "two"
    def second, do: @attr
end

IO.puts "#{AnotherAtttributeModule.first} #{AnotherAtttributeModule.second}"

# Module Names
# Module names are internally converted to atoms.
IO.puts is_atom IO
IO.puts to_string IO
IO.puts :"Elixir.IO" === IO
