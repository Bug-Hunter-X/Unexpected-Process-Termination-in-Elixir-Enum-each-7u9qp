```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {:ok, []}, fn x, acc ->
  if x == 3 do
    {:error, :shutdown}
  else
    {:ok, [x | elem(acc, 1)]}
  end
end)

case result do
  {:ok, list} -> IO.puts(Enum.join(list, ", "))
  {:error, reason} -> IO.puts("Process exiting with reason: #{reason}")
end
```