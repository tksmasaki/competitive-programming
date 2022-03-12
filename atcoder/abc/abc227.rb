# frozen_string_literal: true

nn, nk, na = gets.split(' ').map(&:to_i)
result = na + nk % nn - 1
result += 1 if result.zero?
puts(result <= nn ? result : result - nn)

# 解説、解答例
# N がとても大きい場合、答えは A+K−1 です。実際には番号が N+1 以上の人は存在しないので、N で割った余りを求めます。また、番号が 0 の人が存在しないことにも注意してください。
# n,k,a=gets.split.map &:to_i
# p (a+k-2)%n+1

# n, k, a = gets.split.map(&:to_i)
# puts (k + (a - 1)) % n == 0 ? n : (k + (a - 1)) % n

gets
expect = gets.split(' ').map(&:to_i)
(1..1000).each do |a|
  (1..1000).each do |b|
    val = (4 * a * b + 3 * (a + b))
    expect.delete_if { |v| v == val }
    break if expect.count.zero?
  end
  break if expect.count.zero?
end
puts expect.count

# WA
# num = gets.to_i
# result = 0
# (1..num).each do |a|
#   (1..num).each do |b|
#     (1..num).each do |c|
#       break if a <= b && b <= c

#       result += 1 if a * b * c <= num
#     end
#   end
# end
# puts result
