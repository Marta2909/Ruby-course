require_relative 'calc'
require 'test-unit'

class TestCalcNumber < Test::Unit::TestCase
  def setup
    @num = CalcNumber.new(2)
  end

  def teardown
    puts "Posprzatane"
  end

  def test_math_works
    assert_equal(4, @num.add(2))
    #assert_equal(5, @num.add(2))
    #assert_equal(5, @num.multiply(2))
    assert_equal(16, @num.multiply(8))
  end

  def test_raises_error_on_invalid_type
    assert_raise(RuntimeError) { CalcNumber.new("tttt") }
  end
end
