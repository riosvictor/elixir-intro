defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias MeuModulo.Math, as: MyMath

  require Integer

  def ola_mundo() do
    inspect(MyMath.soma(2, 2))
  end

  def eh_par(number) do
    puts("O número #{number} é par? #{Integer.is_even(number)}")
  end

  defp inspect(param) do
    puts("Começando a inspeção")
    puts(param)
    puts("Terminando a inspeção")
  end
end
