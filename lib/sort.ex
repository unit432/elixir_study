defmodule Sort do
  @doc """
  Merge Sort

  ## Examples

    iex> Sort.merge_sort([99, 3, 1, 18])
    [1, 3, 18, 99]
  """
  def merge_sort(list) when length(list) < 2, do: list

  def merge_sort(list) do
    {left, right} = Enum.split(list, div(length(list), 2))
    :lists.merge(merge_sort(left), merge_sort(right))
  end
end
