gets
numbers = gets.split.map(&:to_i)
count = 0
while numbers.all?(&:even?)
  count += 1
  numbers.map! { |v| v / 2 }
end
puts count
