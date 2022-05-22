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

# C - Slot Strategy => AC (fixed)
reels = []
gets.to_i.times { reels << gets.chars.map(&:to_i) }
counts = Array.new(10) { Array.new(10, 0) }
(0..9).each do |i|
  reels.each do |reel|
    counts[i][reel.index(i)] += 1
  end
end
results = counts.map do |count|
  count.map.with_index { |c, i| (10 * (c - 1)) + i }.max
end
puts results.min
