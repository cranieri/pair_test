require './amount'

class USDAmount < Amount
  def fee
    0.5 * amount/100
  end
end
