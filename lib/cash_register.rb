require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end


  def add_item(item, price, quantity = 1 )
    @total = @total + (price * quantity)
    @total
  end

  def apply_discount
    @discount = @discount / 100
    @total = @total - (@total * @discount)
    binding.pry
    @total
  end

end
