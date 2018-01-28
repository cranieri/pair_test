class FeeCalculator
  attr_reader :payments
  def initialize(payments)
    @payments = payments
  end

  def execute
    payments.map do |payment|
      payment.merge(fee: AmountBuilder.build(payment[:amount], payment[:currency]).fee)
    end
  end
end
