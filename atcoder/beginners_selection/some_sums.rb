# 1 以上 N 以下の整数のうち、10 進法での各桁の和が A 以上 B 以下であるものの総和を求めてください。
n, a, b = gets.split.map(&:to_i)
array = (1..n).map do |i|
  v = i.to_s.chars.map(&:to_i).sum
  a <= v && v <= b ? i : 0
end
puts array.sum
