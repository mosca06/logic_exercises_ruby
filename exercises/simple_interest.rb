class SimpleInterest
  def self.calculate(initial_amount, fee, months)
    "R$ #{interest(initial_amount, fee, months)}"
  end

  def self.interest(initial_amount, fee, months)
    initial_amount + (initial_amount * fee * months) / 100.0
  end
end
