class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1 )
    new_total = @total + (price * quantity)
    @total = new_total
    @total
  end


end
