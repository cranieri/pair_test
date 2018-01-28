class Amount
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def fee
    raise NotImplementedError
  end
end
