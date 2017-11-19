class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item_name, price, quantity = 1)
    @total += price * quantity
    @items << item_name
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

end
