gets
cards = gets.split.map(&:to_i).sort.reverse
alice = cards.values_at(*cards.each_index.select(&:even?)).sum
bob = cards.values_at(*cards.each_index.select(&:odd?)).sum
puts alice - bob
