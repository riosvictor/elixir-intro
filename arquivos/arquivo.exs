defmodule MeuModulo.Arquivo do
  def ler(filename) do
    case File.read(filename) do
      {:ok, content} -> IO.puts(content)
      {:error, :enoent} -> "Arquivo inexistente"
      {:error, :eacces} -> "Arquivo sem permissão de leitura"
      _ -> "Erro desconhecido"
    end
  end
end
