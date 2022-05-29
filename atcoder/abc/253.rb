# [A \- Median?](https://atcoder.jp/contests/abc253/tasks/abc253_a)
a, b, c = gets.split
puts(b == [a, b, c].sort[1] ? 'Yes' : 'No')

# [B \- Distance Between Tokens](https://atcoder.jp/contests/abc253/tasks/abc253_b)
h, w = gets.split.map(&:to_i)
s = h.times.map { gets.chomp.chars }
peaces = []
h.times do |i|
  w.times do |j|
    peaces << [i, j] if s[i][j] == 'o'
  end
end
puts((peaces[0][0] - peaces[1][0]).abs + (peaces[0][1] - peaces[1][1]).abs)

# [C \- Max \- Min Query](https://atcoder.jp/contests/abc253/tasks/abc253_c)
n = gets.to_i
s = []
i = 0
# times を while にしてみたりしたがダメだった。
# 参考：https://zenn.dev/universato/articles/20201210-z-ruby#%E5%9F%BA%E6%9C%AC%E7%9A%84%E3%81%AA%E7%B9%B0%E3%82%8A%E8%BF%94%E3%81%97(%E3%83%AB%E3%83%BC%E3%83%97)%E3%81%AE%E5%87%A6%E7%90%86
while i < n
  q, x, c = gets.split.map(&:to_i)
  case q
  when 1
    s << x
    s.sort!
  when 2
    min = [c, s.count(x)].min
    min.times { s.delete_at(s.index(x)) }
  when 3
    puts(s[-1] - s[0])
  end
  i += 1
end
# => TLE: 12
