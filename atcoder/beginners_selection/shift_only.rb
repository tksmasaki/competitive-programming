gets
a = gets.chomp.split.map(&:to_i)
r = 0
while a.all?(&:even?)
  r += 1
  a.map! { |v| v.div 2 }
end
puts r
