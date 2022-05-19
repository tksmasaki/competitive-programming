a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
num = 0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      num += 1 if ((500 * i) + (100 * j) + (50 * k)) == x
    end
  end
end
puts num

# Previous Answer
# a = gets.chomp.to_i + 1
# b = gets.chomp.to_i + 1
# c = gets.chomp.to_i + 1
# s = gets.chomp.to_i
# r = 0
# a.times do |i|
#   b.times do |j|
#     c.times do |k|
#       r += 1 if 500 * i + 100 * j + 50 * k == s
#     end
#   end
# end
# puts r
