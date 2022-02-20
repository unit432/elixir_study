defmodule SortTest do
  use ExUnit.Case
  doctest Sort

  describe "#merge_sort" do
    test "sort array" do
      assert Sort.merge_sort([45, 2, 3, 1, -9, 12, 3, 5]) == [-9, 1, 2, 3, 3, 5, 12, 45]
    end

    test "works for empty array" do
      assert Sort.merge_sort([]) == []
    end
  end
end
