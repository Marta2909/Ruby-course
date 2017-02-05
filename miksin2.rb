class NameLength
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def <=>(other)
    @name.length <=> other.name.length
  end
end

n1 = NameLength.new("kot")
n2 = NameLength.new("pies")

puts n2 > n1
puts n2 < n1
puts n2 >= n1
puts n2 <= n1
puts n2 == n1

class Colors
  include Enumerable
  def each
    yield "red"
    yield "green"
    yield "blue"
    yield "yellow"
  end
end

c = Colors.new
c.each { |c| puts c }
puts c.map { |c| c.upcase }.inspect
puts c.select {|c| c.length.odd? }.inspect
