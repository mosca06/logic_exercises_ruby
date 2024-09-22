class AtPower
  def self.calculate(number,power)
    result_number = 1

    power.times do
     result_number *= number
    end

    "#{number}^#{power} = #{result_number}"
  end
end
