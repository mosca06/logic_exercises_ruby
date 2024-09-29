class BinToDec
  def self.convert(number)
    decimal_number = 0
    bin_string = number.to_s.reverse

    bin_string.length().times do |i|
      decimal_number += bin_string[i].to_i * (2 ** i)
    end
   

    decimal_number
  end
end
