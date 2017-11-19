class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    total_price = @total / 20
    total_price
  end

end
