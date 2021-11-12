defmodule MeuModulo.Loop do
  # a condição de parada sempre deverá ser especificada em primeiro lugar
  defp tabuada(_, 11), do: nil

  defp tabuada(produto1, produto2) do
    IO.puts("#{produto1} x #{produto2} = #{produto1 * produto2}")
    tabuada(produto1, produto2 + 1)
  end

  def tabuada(multiplicador) do
    tabuada(multiplicador, 1)
  end

  # DESAFIO (body recursion, usando pilha para acumular os retornos)
  def tabuada2(multiplicador)
    when(is_integer(multiplicador) and
         multiplicador > 0
    ) do
    tabuada2(multiplicador, 1)
  end

  defp tabuada2(_, 11), do: []

  defp tabuada2(produto1, produto2) do
    [produto1 * produto2] ++ tabuada2(produto1, produto2 + 1)
  end
end
