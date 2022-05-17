l, r = gets.split.map { |s| s.to_i - 1 }
s = gets.chomp.chars
result = if l.zero?
           s.slice!(l..r).reverse.join + s.join
         else
           s[0..(l - 1)].join + s.slice(l..r).reverse.join + s[(r + 1)..].join
         end
puts result

# 解答例
# l, r = gets.split.map(&:to_i)
# s = gets.chomp
# s[l - 1...r] = s[l - 1...r].reverse
# puts s
