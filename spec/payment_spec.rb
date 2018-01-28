require './payment'
require './usd_amount'
require './eur_amount'
require './gbp_amount'
require './amount'
require './amount_builder'
require './fee_calculator'

RSpec.describe Payment do
  let(:payments) do
    [
      {
        amount: 100,
        currency: "USD"
      },
      {
        amount: 100 ,
        currency: "EUR"
      },
      {
        amount: 100,
        currency: "GBP"
      }
    ]
  end

  let(:payments_with_fees) do
    [
      {
        amount: 100,
        currency: "USD",
        fee: 0.5
      },
      {
        amount: 100,
        currency: "EUR",
        fee: 0.75
      },
      {
        amount: 100,
        currency: "GBP",
        fee: 0.25
      }
    ]
  end

  describe "#fee" do
    it "returns 0.5 for a payment of 100 USD" do
      fee_calculator = FeeCalculator.new(payments)
      expect(fee_calculator.execute).to eq payments_with_fees
    end
  end
end
