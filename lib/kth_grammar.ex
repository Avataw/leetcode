# https://leetcode.com/problems/k-th-symbol-in-grammar/
defmodule KthGrammar do
  def is_even(n), do: rem(n, 2) == 0

  def find_lowest_power_of_two(n, k) do
    0..n
    |> Enum.map(fn i -> Integer.pow(2, i) end)
    |> Enum.with_index()
    |> Enum.find(fn {x, _} -> k <= x end)
  end

  def kth_grammar_rec(n, k, flip) when n == 1 or k == 1 do
    case flip do
      true -> 1
      false -> 0
    end
  end

  def kth_grammar_rec(n, k, flip) do
    {length, index} = find_lowest_power_of_two(n, k)

    half = length / 2

    case is_even(index + 1) do
      true -> kth_grammar_rec(n - 1, k - half, !flip)
      false -> kth_grammar_rec(n - 1, k - half, !flip)
    end
  end

  def kth_grammar(n, k), do: kth_grammar_rec(n, k, false)
end
