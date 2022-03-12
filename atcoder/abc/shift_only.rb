# frozen_string_literal: true

_ = gets
nums = gets.chomp.split.map(&:to_i)
times = 0
bool = true

while bool
  nums.map do |x|
    bool = x.even? && !x.zero?
    break unless bool
  end
  break unless bool

  nums.map! { |x| x / 2 }
  times += 1
end
puts times
