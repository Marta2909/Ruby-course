class CalcNumber
  def initialize(number)
    raise RuntimeError, "Potrafię operować tylko na liczbach" unless number.is_a?(Numeric)
    @number = number
  end

  def add(x)
    @number + x
  end

  def multiply(x)
    @number * x
  end
end
