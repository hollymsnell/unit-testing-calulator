require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'should return difference between numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5, 2)
      expect(result).to eq(3)
    end

    it 'should work with negative difference' do
      calculator = Calculator.new
      result = calculator.subtract(1, 4)
      expect(result).to eq(-3)
    end
  end

  describe '#multiply' do
    it 'should return product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(2, 3)
      expect(result).to eq(6)
  end
 end

  describe '#divide' do
    it 'should return number of times divisor goes into dividend' do
      calculator = Calculator.new
      result = calculator.divide(16, 4)
      expect(result).to eq(4)
    end

    # it 'should work with decimals' do
    #   calculator = Calculator.new
    #   result = calculator.divide(4, 16)
    #   expect(result).to eq(0.25)
    # end
  end

  describe '#square' do
    it 'should return number times itself' do
      calculator = Calculator.new
      result = calculator.square(3)
      expect(result).to eq(9)
    end
  end

  describe '#power' do
    it 'should return number times itself the exponent number of times' do
      calculator = Calculator.new
      result = calculator.power(3, 3)
      expect(result).to eq(27)
    end
  end
end  