n = gets.chomp.to_i
_n = n
sum = 0
loop do
  sum += n % 10
  n = (n / 10).floor
  break if n <= 0
end
puts _n % sum == 0 ? 'Yes' : 'No'
