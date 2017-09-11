defmodule Prefix do
  def takeFirst(prefix, [x | a], [y | b], len) when x == y do
    takeFirst([x | prefix], a, b, len + 1)
  end

  def takeFirst(prefix, a, b, len) do
    [
        [len, Enum.reverse(prefix)],
        [length(a), a],
        [length(b), b]
    ]
  end

  def main(a, b) do
    takeFirst(
        [],
        a |> String.split("", trim: true),
        b |> String.split("", trim: true),
        0
    )
  end

  def readLine() do
      IO.gets("") |> String.trim
  end

  def formatResult(a, b) do
      Enum.map(
        main(a, b),
        fn s -> Enum.join([List.first(s), Enum.join(List.last(s), "")], " ") end
      )
  end

  def output(res) do
      [prefix, a, b] = res

      IO.puts prefix
      IO.puts a
      IO.puts b
  end

  def start() do
      output(
        formatResult(
            readLine(),
            readLine()
        )
      )
  end
end
