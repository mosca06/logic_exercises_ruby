class DecToBin
  def self.convert(number)
    binary_number_to_invert = []
    number_to_divide = number

    while number_to_divide > 0
      binary_number_to_invert << divide_by_two_rest(number_to_divide)
      number_to_divide = divide_by_two(number_to_divide)
    end

    binary_number_to_invert.reverse.join.to_i
  end

  def self.divide_by_two(number)
    number / 2
  end

  def self.divide_by_two_rest(number)
    number % 2
  end
end
