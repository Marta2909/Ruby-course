x = 2

case x
when 0
  puts "zero"
when 1,2,3,4,5
  puts "1-5"
when 6..9
  puts "6-9"
when 2
  puts "powtórka"
else
  puts "coś innego"
end

y=8
message = case y
when 0
  "zero"
when 1, 2, 3, 4, 5
  "1-5"
when 6..9
  "6-9"
else
  "coś innego"
end
puts message
