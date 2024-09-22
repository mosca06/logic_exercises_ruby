class CompoundInterest
  def self.calculate(initial_amount, fee, months)
    compoundAmount = initial_amount
    months.times do
      compoundAmount += compoundAmount * fee/100.0
    end
    "R$ #{compoundAmount.round(2)}"
  end
end
