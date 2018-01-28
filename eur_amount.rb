require './amount'

class EURAmount < Amount
  def fee
    0.75 * amount/100
  end
end
