x, y = gets.split.map(&:to_i)
puts(x < y ? ((y - x) / 10.to_f).ceil : 0)
