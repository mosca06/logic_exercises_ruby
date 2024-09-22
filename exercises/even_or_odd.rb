class EvenOrOdd
  def self.calculate(number)
    isDecimal(number) ? "#{number} is #{isOddEven(getDecimal(number))}" : "#{number} is #{isOddEven(number)}"
  end

  def self.isDecimal(number)
    number.class == Float
  end

  def self.getDecimal(number)
    number.to_s.split('.').last.to_i
  end


  def self.isOddEven(number)
    puts number
    number % 2 > 0 ? "odd" : "even"
  end 

end
