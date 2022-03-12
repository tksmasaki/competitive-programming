t = gets.chomp.to_i
def calc(num)
  num * num + 2 * num + 3
end
puts(calc(calc(calc(t) + t) + calc(calc(t))))
