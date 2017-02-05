class Person
  @@population = 0

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def + (other_person)
    Person.new([self.name, other_person.name].join(" i "))
  end

  def ==(other_person)
    self.name == other_person.name
  end
end


o1 = Person.new("Marta")
o2 = Person.new("Ja")
o12= o1 + o2
puts o12.name
puts o1 == o2
o3 = Person.new("Ja")
puts o2==o3
