defmodule MeuModulo.LoopTail do
  # a condição de parada sempre deverá ser especificada em primeiro lugar
  # DESAFIO (tail recursion, sem usar pilha para acumular os retornos)
  def tabuada(multiplicador)
    when(is_integer(multiplicador) and
         multiplicador > 0
    ) do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(produto1, produto2, valores) do
    novos_valores = valores ++ [produto1 * produto2]
    tabuada(produto1, produto2 + 1, novos_valores)
  end
end
