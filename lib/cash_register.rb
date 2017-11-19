class CashRegister

  def initialize(discount = "0")
    @total = discount.to_i
  end
end
