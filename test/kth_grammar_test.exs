defmodule KthGrammarTest do
  use ExUnit.Case, async: true

  test "first test" do
    assert KthGrammar.kth_grammar(1, 1) == 0
  end

  test "second test" do
    assert KthGrammar.kth_grammar(2, 1) == 0
  end

  test "third test" do
    assert KthGrammar.kth_grammar(2, 2) == 1
  end

  test "fourth test" do
    assert KthGrammar.kth_grammar(3, 2) == 1
  end

  test "fifth test" do
    assert KthGrammar.kth_grammar(3, 3) == 1
  end
end
