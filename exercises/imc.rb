class Imc
  @imc_ranges = [
    { threshold: 18.6, description: 'Abaixo do peso' },
    { threshold: 24.9, description: 'peso normal' },
    { threshold: 29.9, description: 'Sobrepeso' },
    { threshold: 34.9, description: 'Obesidade grau 1' },
    { threshold: 39.9, description: 'Obesidade grau 2' }
  ]

  def self.calculate(height,weight)

    height_in_meters = parse_height(height)

    imc = (weight / (height_in_meters * height_in_meters)).round(2)
    
    rate_imc(imc)
    
  end

  def self.parse_height(height)
    height / 100.0
  end

  def self.rate_imc(imc)
    # Encontra a faixa correta usando a chave do hash
    @imc_ranges.each do |range|
      return "#{imc} - #{range[:description]}" if imc <= range[:threshold]
    end
    "#{imc} - Obesidade grau 3"
  end

end