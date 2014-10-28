letters = ("A".."J").to_a
numbers = ("1".."10").to_a

board= {}

letters.map { |let| numbers.map { |num| board["#{let}#{num}"] "cell"}}

cell_keys = board.map { |first_dimen| first_dimen.map { |second_dimen| second_dimen}}

Hash[cell_keys.flatten.map { |key, value| [key, "Cell.new"]}]

flatten_cell = cell_keys.flatten

puts flatten_cell[11]

board= {}

#("A".."J").each { |let| ("1".."10").each { |num| board["#{let}#{num}"] = "cell"}}