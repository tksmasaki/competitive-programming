# 英小文字からなる文字列 S が与えられます。 Tが空文字列である状態から始め、以下の操作を好きな回数繰り返すことで S=T とすることができるか判定してください。
# T の末尾に dream dreamer erase eraser のいずれかを追加する。

puts gets.chomp.match?(/\A(dream|dreamer|erase|eraser)+\Z/) ? 'YES' : 'NO'
