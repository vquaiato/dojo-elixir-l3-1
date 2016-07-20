defmodule Dojo1Test do
  use ExUnit.Case
  doctest Dojo1
  import Dojo1

  test "numero 0 nao é primo" do
    assert is_prime(0) == false
  end

  test "numero 1 tem que ser primo" do
    assert is_prime(1) == false
  end

  test "numero 2 tem que ser primo" do
    assert is_prime(2)
  end

  test "numero 3 tem que ser primo" do
    assert is_prime(3)
  end

  test "numero 4 nao é primo" do
    assert is_prime(4) == false
  end

  test "numero 20 não é primo" do
    assert is_prime(20) == false
  end

  test "numero 23 é primo" do
    assert is_prime(23)
  end

  test "numero de a é 1" do
    assert numero_palavra "a" == 1
  end

  test "numero de b é 2" do
    assert (numero_palavra "b") == 2
  end

  test "numero de A é 27" do
    assert (numero_palavra "A") == 27
  end

  test "numero de B é 28" do
    assert (numero_palavra "B") == 28
  end

  test "soma de 'ab' tem que ser 3" do
    assert (numero_palavra "ab") == 3
  end

  test "soma de banana tem que ser 33" do
    assert (numero_palavra "banana") == 33
  end

  test "soma de banana tem que ser 195" do
    assert (numero_palavra "BANANA") == 189
  end

  test "banana não é prima" do
    assert (palavra_prima "banana") == false
  end 

  test "g é prima" do
    assert (palavra_prima "g")
  end 

  test "gac é prima" do
    assert (palavra_prima "gac")
  end

  test "ga  c é prima" do
    assert (palavra_prima "ga  c")
  end
end
