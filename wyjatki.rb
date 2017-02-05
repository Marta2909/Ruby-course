puts "Początek"
class IllegalOperationError < StandardError; end
a,b = 2,0
counter = 0
begin
  puts a/b
rescue ZeroDivisionError => e
  counter +=1
  puts "Nie dziel przez zero"
  retry if counter < 3
  raise IllegalOperationError.new
rescue NameError
  puts "Nie ma takiej nazwy"
else
  puts "Nie wystąpił żaden błąd"
ensure
  puts "wykona się zawsze"
end
puts "Koniec"
