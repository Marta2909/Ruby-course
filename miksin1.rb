module Addressable
  attr_accessor :zip_code, :city, :street

  def full_address
    "#{street}\n#{zip_code} #{city}\nPolska"
  end
end

class Person
  include Addressable
end

class School
  include Addressable
end

p = Person.new
p.zip_code = "12-345"
p.city = "Kraków"
p.street = "Krakowska"
puts p.full_address
