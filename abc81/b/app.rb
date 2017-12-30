gets
num = gets.chomp.split(' ').map(&:to_i)
count = 0
loop do
  flg = false
  num.each_with_index do |n, i|
    flg = true if n % 2 != 0
    num[i] = n / 2
  end
  break if flg
  count += 1
end
p count
