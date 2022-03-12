# s, t, x = gets.split.map(&:to_i)
# t = 24 if t.zero?
# if s < t
#   puts(s <= x && x < t ? 'Yes' : 'No')
# elsif t < s
#   t += 24
#   puts(s <= x && x < t ? 'Yes' : 'No')
# end

s, t, x = gets.split.map(&:to_i)
ans = if s < t
        s <= x && x < t ? 'Yes' : 'No'
      else
        s <= x || x < t ? 'Yes' : 'No'
      end
puts ans
