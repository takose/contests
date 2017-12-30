gets
arr = gets.split(' ').map(&:to_i)
arr_g = arr.group_by(&:itself).to_a

sum = 0
arr_g.each do |a|
  if a.last.length < a.first
    sum += a.last.length
  elsif a.last.length > a.first
    sum += a.last.length - a.first
  end
end
p sum
