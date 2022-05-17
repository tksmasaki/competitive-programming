a = gets.chomp.to_i + 1
b = gets.chomp.to_i + 1
c = gets.chomp.to_i + 1
s = gets.chomp.to_i
r = 0
a.times do |i|
  b.times do |j|
    c.times do |k|
      r += 1 if (500 * i) + (100 * j) + (50 * k) == s
    end
  end
end
puts r
