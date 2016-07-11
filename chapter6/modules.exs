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
