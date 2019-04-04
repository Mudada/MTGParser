defmodule MtgParser.Plain do
  use Combine

  def parse(plainMTGList), do: Combine.parse(plainMTGList, plainParser())

  defp plainParser do
    titleParser()
    |> newline()
    |> categoryParser("Sideboard")
    |> many(cardParser())
    |> categoryParser("Sideboard")
    |> many(cardParser())
  end

  defp titleParser do
    many1(char())
  end

  defp categoryParser categoryName do
    string(categoryName)
    |> skip(space())
    |> skip(char("("))
    |> integer()
    |> skip(char(")"))
  end

  defp cardParser do
    integer()
    |> skip(space())
    |> many1(either(word(), space()))
    |> newline()
  end
end
