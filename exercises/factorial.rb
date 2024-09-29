class Factorial
  def self.calculate(number)
   fatorial_result = 1
   
   1.upto(number) do |i|
    fatorial_result *= i
   end

   fatorial_result
  end
end
