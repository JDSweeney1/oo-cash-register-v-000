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
    if discount != 0
      total = (total * ((100.0 - discount.to_f)/100.0)).to_i
    end
  end

end
