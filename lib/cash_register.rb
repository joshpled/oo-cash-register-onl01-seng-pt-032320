require 'pry'
class CashRegister
  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  @items = []

  def add_item(item, price, quantity = 1 )
    @total = @total + (price * quantity)
    @total
    self.items << item
  end

  def apply_discount

    if @discount == 0
      "There is no discount to apply."
    else
    d = @discount.to_f
    t = @total.to_f
    @total = t - (t * (d / 100))


    "After the discount, the total comes to $#{@total.to_i}."
  end
  end

  def items
    @total
        # binding.pry
  end
end
