defmodule Dojo1 do
    import :math

    def is_prime?(n) when n in 0..1, do: false
    def is_prime?(n), do: is_prime?(n, round sqrt(n))
    defp is_prime?(_, 1), do: true
    defp is_prime?(n, start) do
        case rem(n, start) do 
        0 -> false
        _ -> is_prime?(n, start-1)
        end
    end
    
    def palavra_prima?(palavra), do: is_prime? numero_palavra(palavra)

    def numero_palavra(palavra), do: numero_palavra(to_charlist(palavra), 0)
    defp numero_palavra([], acc), do: acc
    defp numero_palavra([ascii_letra | resto_palavra], acc) do
        cond do
            ascii_letra in 97..122 -> numero_palavra(resto_palavra, acc + ascii_letra - 96)
            ascii_letra in 65..90  -> numero_palavra(resto_palavra, acc + ascii_letra - 38)
            true -> numero_palavra(resto_palavra, acc)
        end
    end
end