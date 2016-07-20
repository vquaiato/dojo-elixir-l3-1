defmodule Dojo1Test do
  use ExUnit.Case
  doctest Dojo1
  import Dojo1

  test "numero 0 nao é primo", do: refute is_prime?(0)
  test "numero 1 nao é primo", do: refute is_prime?(1)
  test "numero 4 nao é primo", do: refute is_prime?(4)
  test "numero 20 não é primo", do: refute is_prime?(20)
  test "numero 2 é primo", do: assert is_prime?(2)
  test "numero 3 é primo", do: assert is_prime?(3)
  test "numero 23 é primo", do: assert is_prime?(23)

  test "numero de a é 1", do: assert (numero_palavra "a") == 1
  test "numero de b é 2", do: assert (numero_palavra "b") == 2
  test "numero de A é 27", do: assert (numero_palavra "A") == 27
  test "numero de B é 28", do: assert (numero_palavra "B") == 28
  test "soma de 'ab' tem que ser 3", do: assert (numero_palavra "ab") == 3
  test "soma de banana tem que ser 33", do: assert (numero_palavra "banana") == 33
  test "soma de banana tem que ser 195", do: assert (numero_palavra "BANANA") == 189
  test "soma de vinicius tem que ser 106", do: assert (numero_palavra "vinicius") == 106

  test "banana não é prima", do: refute (palavra_prima? "banana")
  test "g é prima", do: assert (palavra_prima? "g")
  test "gac é prima", do: assert (palavra_prima? "gac")
  test "ga  c é prima", do: assert (palavra_prima? "ga  c")
  test "vinicius não é prima", do: refute (palavra_prima? "vinicius")
  test "a vinicius é prima", do: assert (palavra_prima? "a vinicius")
end
