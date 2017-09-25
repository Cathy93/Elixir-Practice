defmodule M do
  def main do
    do_stuff()
    otherstuff()
    lists()
  end

  def do_stuff do
    age = 16
    if age >= 18 do
      IO.puts "Can Vote"
    else
      IO.puts "Cant Vote"
    end

    unless age === 18 do
      IO.puts "You are not 18"
    else
      IO.puts "You are 18"
    end

    cond do
      age >= 18 -> IO.puts "You can Vote"
      age>= 16 -> IO.puts "You can drive"
      age >= 14 -> IO.puts "You can wait"
      true -> IO.puts "Default"
    end

    case 2 do
      1 -> IO.puts "Entered 1"
      2 -> IO.puts "Entered 2"
      _ -> IO.puts "Default"
      end

      IO.puts "Ternary : #{if age > 18, do: "Can vote", else: "Can't vote"}"
    end

  def otherstuff do
      my_stats = {175, 6.25, :Cathy}

      IO.puts "Tuple #{is_tuple(my_stats)}"

      my_stats2 = Tuple.append(my_stats, 42)

      IO.puts "Age #{elem(my_stats2, 3)}"

      IO.puts "Size : #{tuple_size(my_stats2)}"

      my_stats3 = Tuple.delete_at(my_stats2, 0)

      my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)

      many_zeros = Tuple.duplicate(0, 5)

      {weight, height, name} = {175, 6.25, "Cathy"}

      IO. puts "Weight : #{weight}"
    end
    def lists do
      list1 = [1,2,3]
      list2 = [4,5,6]

      list3 = list1 ++ list2

      list4  = list3 -- list1

      IO.puts 6 in list4

      [head | tail] = list3
      IO.puts "Head : #{head}"

      IO.write "Tail : "
      IO.inspect tail

      IO.inspect [97,98], char_lists: :as_lists

      Enum.each tail, fn item ->
        IO.puts item
      end

      words =["Random", "Words", "In", "A", "List"]
      Enum.each words, fn word ->
        IO.puts words
      end

      display_list(words)

      IO.puts display_list(list.delete(words, "Random"))

    end
    def display_list([word|words]) do
      IO.puts word
      display_list(words)
    end
    def display_list([]), do: nil

end
