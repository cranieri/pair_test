class AmountBuilder
  def self.build(amount, currency)
    amount_class = Kernel.const_get("#{currency}Amount")
    amount_class.new(amount)
  end
end
