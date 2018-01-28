require './amount'

class GBPAmount < Amount
  def fee
    0.25 * amount/100
  end
end
