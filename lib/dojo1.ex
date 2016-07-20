defmodule Dojo1 do
    def is_prime(1), do: false
    def is_prime(n), do: is_prime(n, n-1)
    defp is_prime(_n, 1), do: true

    defp is_prime(n, start) do
        case rem(n, start) do 
        0 -> false
        _ -> is_prime(n, start-1)
        end
    end

    def numero_palavra(palavra), do: numero_palavra(to_charlist(palavra), 0)

    def numero_palavra([], acc), do: acc
    def numero_palavra([32 | tail], acc), do: numero_palavra(tail, acc)
    def numero_palavra([head | tail], acc) do
        case head > 90 do
            :true -> numero_palavra(tail, acc + head - 96)
            :false -> numero_palavra(tail, acc + head - 38)
        end
    end

    def palavra_prima(palavra), do: is_prime numero_palavra(palavra)
end