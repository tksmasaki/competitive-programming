# print((gets.to_i + gets.split.map(&:to_i).sum).to_s + " #{gets.chomp}")

num = gets.to_i
num += gets.split.map(&:to_i).sum
puts("#{num} #{gets.chomp}")
