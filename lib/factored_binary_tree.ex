defmodule FactoredBinaryTree do
  def num_factored_binary_trees(arr) do
    arr
    |> Enum.sort()
    |> Enum.reduce(%{}, fn first, acc ->
      count = 1

      count =
        Enum.reduce_while(arr, count, fn second, acc1 ->
          remainder = div(first, second)

          if rem(first, second) == 0 and Map.has_key?(acc, remainder) do
            {:cont, acc1 + Map.get(acc, second) * Map.get(acc, remainder)}
          else
            {:cont, acc1}
          end
        end)

      Map.put(acc, first, count)
    end)
    |> Map.values()
    |> Enum.sum()
    |> rem(Integer.pow(10, 9) + 7)
  end
end
