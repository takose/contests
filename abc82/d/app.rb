c = gets.chars
x, y = gets.split(' ').map(&:to_i)
f = c.count('F')
t = c.count('T')
flg = false
if x == 0 && y == 0
  flg = true unless t < 2 || t % 2 == 1
elsif x == 0
  flg = true if t % 2 == 0
elsif y == 0
  flg = true if t % 2 == 1
else
  flg = true
end
f = f - (x + y)
if flg && f >= 0 && f % 2 == 0
  puts "Yes"
else
  puts "No"
end
