n = gets.chomp.to_i
f = []
n.times do
  f << gets.chomp.split(' ').map(&:to_i)
end
sum = 0
small = 1
done = false
n.times do |i|
  arr = gets.chomp.split(' ').map(&:to_i)
  benefit = arr[f[i].inject(&:+)]
  p "idx: #{f[i].inject(&:+)}"
  if benefit > 0
    sum += benefit
    done = true
  elsif !done && (small < benefit || small > 0)
    puts 'enter'
    sum += benefit
    done = true
  end
end
p sum
