defmodule MeuModulo.Calendario do
  # nunca faça assim
  def abrev_day_week(day) do
    if day === :Segunda do
      "Seg"
    else
      if day === :Terca do
        "Ter"
      else
        if day === :Quarta do
          "Qua"
        else
          if day === :Quinta do
            "Qui"
          else
            if day === :Sexta do
              "Sex"
            else
              if day === :Sabado do
                "Sab"
              else
                "Dom"
              end
            end
          end
        end
      end
    end
  end

  def abrev_day_week2(day) do
    case day do
      :Segunda -> "Seg"
      :Terca -> "Ter"
      :Quarta -> "Qua"
      :Quinta -> "Qui"
      :Sexta -> "Sex"
      :Sabado -> "Sab"
      :Domingo -> "Dom"
      _ -> "Dia inválido"
    end
  end

  def abrev_day_week3(day) do
    cond do
      day == :Segunda -> "Seg"
      day == :Terca -> "Ter"
      day == :Quarta -> "Qua"
      day == :Quinta -> "Qui"
      day == :Sexta -> "Sex"
      day == :Sabado -> "Sab"
      day == :Domingo -> "Dom"
      true -> "Dia inválido"
    end
  end

  def abrev_day_week4(:Segunda), do: "Seg"
  def abrev_day_week4(:Terca), do: "Ter"
  def abrev_day_week4(:Quarta), do: "Qua"
  def abrev_day_week4(:Quinta), do: "Qui"
  def abrev_day_week4(:Sexta), do: "Sex"
  def abrev_day_week4(:Sabado), do: "Sab"
  def abrev_day_week4(:Domingo), do: "Dom"
  def abrev_day_week4(_), do: "Dia inválido"
end
