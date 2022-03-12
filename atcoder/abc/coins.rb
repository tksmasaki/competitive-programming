# frozen_string_literal: true

a = gets.to_i + 1
b = gets.to_i + 1
c = gets.to_i + 1
total = gets.to_i
count = 0
a.times { |i| b.times { |j| c.times { |k| count += 1 if (500 * i + 100 * j + 50 * k) == total } } }
puts count

# a, b, c, x = 4.times.map { gets.to_i }
# count = 0
# (a + 1).times do |i|
#   (b + 1).times { |j| (c + 1).times { |k| count += 1 if 500 * i + 100 * j + 50 * k == x } }
# end
# puts count
