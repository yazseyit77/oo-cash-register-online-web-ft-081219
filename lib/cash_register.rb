
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @cart << title
    end
    self.last_transaction = price * quantity
    @total += self.last_transaction
  end

  def apply_discount
    if self.discount = 0
      "There is no discount to apply."
    else
      @total = self.total * (1-(self.discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

end
