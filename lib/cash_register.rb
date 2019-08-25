
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    @sub_total = price * quantity
    self.total += @sub_total
    if quantity > 1
      while quantity > 0
        @cart << title
        quantity -= 1
      end
    else
      @cart << title
    end

  end

  def apply_discount
    if self.discount = 0
      "There is no discount to apply."
    else
      @total = self.total * (1-(self.discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def cart
    @cart
  end

end
