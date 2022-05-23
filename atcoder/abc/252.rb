# A - ASCII code => AC
puts(gets.to_i.chr)

# B - Takahashi's Failure => AC
gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
max = a.max
flag = b.any? { |v| a[v - 1] == max }
puts flag ? 'Yes' : 'No'

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
