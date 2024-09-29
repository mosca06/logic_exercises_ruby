class Fibonacci
  def self.calculate(number)
    @@fibonacci_results= [
      0,
      1
    ]

    return @@fibonacci_results[number] unless @@fibonacci_results[number].nil?

    2.upto(number) do |num|
      @@fibonacci_results[num] =  @@fibonacci_results[num - 1] + @@fibonacci_results[ num - 2]
    end

    @@fibonacci_results[number]
  end
end
