class Payment
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def fee
    amount.fee
  end
end
