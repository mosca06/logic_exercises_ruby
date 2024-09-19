class MultiplicationTable
  @@index = 1
  @@result = ''
  
  def self.calculate(number)
    @@result = ''
    @@index = 1
    loop_through(number)
  end

  def self.loop_through(number)
    while @@index <= 10
      @@result += write_rule(number)
      @@index += 1
    end
    @@result
  end

  def self.write_rule(number)
    @@index == 10 ? "#{number}x#{10} = #{number * 10}" : "#{number}x#{@@index} = #{operation(number)}, "
  end

  def self.operation(number)
    number * @@index
  end
end
