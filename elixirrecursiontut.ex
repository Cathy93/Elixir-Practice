defmodule M do
  def main do
    do_stuff()
  end
  def do_stuff do

    IO.puts "Factorial of 4 : #{factorial(4)}"
    IO.puts "Sum : #{sum([1,2,3])}"

    loop(5,1)
    IO.puts "Even List : #{Enum.all?([1,2,3],
      fn (n) -> rem(n, 2) == 0 end)}"

      IO.puts "Even List : #{Enum.any?([1,2,3],
        fn (n) -> rem(n, 2) == 0 end)}"

    Enum.each([1,2,3], fn(n) -> IO.puts n end)

    dbl_list = Enum.map([1,2,3], fn(n) -> n * 2 end)
    IO.inspect dbl_list

    sum_vals = Enum.reduce([1,2,3], fn(n, sum) -> n + sum end)
    IO.puts "Sum : #{sum_vals}"

    IO.inspect Enum.uniq([1,2,2])

    dbl_list = for n <- [1,2,3], do: n * 2
    IO.inspect dbl_list

    even_list = for n <- [1,2,3,4], rem(n,2) === 0, do: n
    IO.inspect even_list

    err = try do
      5 / 0

    rescue
      ArithmeticError -> "Can't Divide by Zero"
    end
    IO.puts err

    spawn(fn() -> loop(50, 1) end)
    spawn(fn() -> loop(100,50) end)

    send(self(), {:french, "Bob"})

    receive do
      {:german, name} -> IO.puts "Guten tag #{name}"
      {:french, name} -> IO.puts "Bonjour #{name}"
      {:english, name} -> IO.puts "Hello #{name}"

    after
      500 -> IO.puts "Time up"
    end


  end

  def sum([]), do: 0

  def sum([h|t]), do: h + sum(t)

  def loop(0,_), do: nil

  def loop(max, min) do
    if max < min do
      loop(0, min)
    else
      IO.puts "Num : #{max}"
      loop(max - 1, min)
    end
  end



  def factorial(num) do
    if num <= 1 do
      1
    else
      result = num * factorial(num - 1)
      result
  end
end
  def display_list([word|words]) do
    IO.puts word
    display_list(word)
  end

  def display_list([]), do: nil
end
