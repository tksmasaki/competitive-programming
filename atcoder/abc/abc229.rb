# 縦 2 行、横 2 列のグリッド(各マスが正方形のマス目)があります。
# このグリッドは、各マスが黒か白であり、少なくとも 2 つの黒マスを含みます。
# 2 つの異なる黒マス同士が辺で接している時、またその時に限りそれら 2 つの黒マスは直接行き来できます。
# 黒マスのみをいくつか通ることによって、どの 2 つの黒マス同士も(直接または間接的に)行き来できるかどうか判定してください。

a = gets.chomp.split('')
a.push(*gets.chomp.split(''))
result = (a[0] == '.' && a[3] == '.') || (a[1] == '.' && a[2] == '.') ? 'No' : 'Yes'
puts result

# 正整数 A,B が与えられます。
# A+B を(十進法で)計算する時、繰り上がりが生じないなら Easy 、生じるなら Hard と出力してください。

a, b = gets.chomp.split
a = a.split('').map(&:to_i).reverse
b = b.split('').map(&:to_i).reverse
result = 'Easy'
[a, b].min_by(&:length).length.times do |i|
  if a[i] + b[i] >= 10
    result = 'Hard'
    break
  end
end
puts result

# ピザ屋で働く高橋くんは、まかないとして美味しいチーズピザを作ることにしました。
# 今、高橋くんの目の前に N 種類のチーズがあります。
# i 種類目のチーズは 1 [g] あたりのおいしさが Aiで、 Bi[g] あります。
# ピザのおいしさは、ピザに乗せたチーズのおいしさの総和で決まります。
# 但し、チーズを使いすぎると怒られてしまうため、乗せたチーズの重さは合計で W [g] 以下である必要があります。
# この条件のもとで、可能なピザのおいしさの最大値を求めてください。

n, w = gets.split.map(&:to_i)
cheeses = Array.new(n) do
  gets.split.map(&:to_i)
end.sort_by(&:first).reverse
result = 0
cheeses.each do |t, g|
  if w > g
    result += t * g
    w -= g
  else
    result += t * w
    break
  end
end
puts result
