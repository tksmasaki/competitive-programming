# [A \- Adjacent Squares](https://atcoder.jp/contests/abc250/tasks/abc250_a)
h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)
ans = 0
ans += 1 if r != 1
ans += 1 if r != h
ans += 1 if c != 1
ans += 1 if c != w
puts ans
