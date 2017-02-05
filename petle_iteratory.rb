x = 0
loop do
  puts "Hello"
  x += 1
  break if x == 5
end
puts
x = 0
while x < 5
  puts "Hello"
  x+=1
end
puts
5.times do
  puts "Hello"
end
puts
3.times {puts "Hello"}
puts
5.times do |x|
  puts "#{x}: Hello"
end
3.times {|x| puts "Hello po raz #{x}"}

["dzik", "kot", "pies"].each do |animal|
  puts animal
end
puts
["dzik","kot","pies"].each_with_index {|a,b| puts "#{b}: #{a}"}
puts

3.upto(10) {|i| puts i}
puts
10.downto(7) {|i| puts i}
puts
3.step(29,9) {|i| puts i}
