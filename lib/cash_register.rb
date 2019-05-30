require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, qty = 1)
    @last_transaction = price*qty
    @total += @last_transaction
    qty.times{@items << title}
  end
  
  def apply_discount
    if discount > 0
      @total -= @total*(@discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
end
