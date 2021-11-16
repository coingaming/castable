# Castable

Protocol to aid casting unknown values to known value.

Example:

  ```elixir
  defimpl Castable, for: MyStruct do
    def cast(_to, %{"foo" => foo}, _opts) when is_bitstring(foo) do
      %MyStruct{foo: foo}
    end

    def cast(_to, foo, _opts) when is_bitstring(foo) do
      %MyStruct{foo: foo}
    end

    def cast(_to, _from, _opts) do
      :error
    end
  end

  iex> Castable.cast(%MyStruct{}, %{"foo" => "bar"})
  %MyStruct{foo: "bar"}

  iex> Castable.cast(%MyStruct{}, "bar")
  %MyStruct{foo: "bar"}

  iex> Castable.cast(%MyStruct{}, 123)
  :error
  ```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `castable` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:castable, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/castable](https://hexdocs.pm/castable).

