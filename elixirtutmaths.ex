defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do
    IO.puts "5 + 4 = #{5+4}"
    IO.puts "5 - 4 = #{5-4}"
    IO.puts "5 * 4 = #{5*4}"
    IO.puts "5 / 4 = #{5/4}"
    IO.puts "5 div 4 = #{div(5,4)}"
    IO.puts "5 rem 4 = #{rem(5,4)}"
    IO.puts "4 == 4.0 : #{4 == 4.0}"
    IO.puts "4 === 4.0 : #{4 === 4.0}"
    IO.puts "4 != 4.0 : #{4 != 4.0}"
    IO.puts "4 !== 4.0 : #{4 !== 4.0}"

    IO.puts "5 > 4 : #{5 > 4}"
    IO.puts "5 >= 4 : #{5 >= 4}"
    IO.puts "5 < 4 : #{5 < 4}"
    IO.puts "5 <= 4 : #{5 <= 4}"

    age = 16
    IO.puts "Vote & drive : #{(age >= 16) and (age >= 18)}"
    IO.puts "Vote or drive : #{(age >= 16) or (age >= 18)}"
  end
end
