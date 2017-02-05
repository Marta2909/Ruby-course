x = 2

puts "start(zawsze)"
if x == 1
  puts "x jest jedynką"
else
  puts "x nie jest jedynką"
end
puts "koniec(zawsze)"


y = 1
signum = if y <0
    -1
elsif y == 0
    0
elsif y > 0
  1
end
puts signum
