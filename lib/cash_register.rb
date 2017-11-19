class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @item << item
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

end
