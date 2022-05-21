# A - ASCII code => AC
n = gets.to_i
a = %w[a b c d e f g h i j k l m n o p q o s t u v w x y z]
puts a[n - 97]

# B - Takahashi's Failure => AC
gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
result = 'No'
max = a.max
b.each do |v|
  result = 'Yes' if a[v - 1] == max
end
puts result

# C - Slot Strategy => WA
reels = []
gets.to_i.times { reels << gets.chars.map(&:to_i) }
init = true
result = 0
(0..9).each do |i|
  tmp_result = 0
  indexes = []
  reels.each do |reel|
    indexes << reel.index(i)
  end
  tmp_result += indexes.max
  reps = []
  (0..9).each do |v|
    reps << (indexes.count(v) - 1)
  end
  rep_max = reps.max
  tmp_result += 10 * rep_max
  result = tmp_result if tmp_result < result || init
  init = false
end
puts result
