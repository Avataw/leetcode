defmodule FactoredBinaryTreeTest do
  use ExUnit.Case, async: true

  test "first test" do
    assert FactoredBinaryTree.num_factored_binary_trees([2, 4]) == 3
  end

  test "second test" do
    assert FactoredBinaryTree.num_factored_binary_trees([2, 4, 5, 10]) == 7
  end

  test "third test" do
    assert FactoredBinaryTree.num_factored_binary_trees([18, 3, 6, 2]) == 12
  end

  test "fourth test" do
    assert FactoredBinaryTree.num_factored_binary_trees([
             45,
             42,
             2,
             18,
             23,
             1170,
             12,
             41,
             40,
             9,
             47,
             24,
             33,
             28,
             10,
             32,
             29,
             17,
             46,
             11,
             759,
             37,
             6,
             26,
             21,
             49,
             31,
             14,
             19,
             8,
             13,
             7,
             27,
             22,
             3,
             36,
             34,
             38,
             39,
             30,
             43,
             15,
             4,
             16,
             35,
             25,
             20,
             44,
             5,
             48
           ])
  end
end
