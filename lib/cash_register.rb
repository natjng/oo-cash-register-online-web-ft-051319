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
<<<<<<< HEAD

# another option for #void_last_traction (this method keeps track of the previous transaction after last transaction is voided)
# add :transactions to attr_accessor
# place @transactions = [] in initialize
# change #add_item to   
#   def add_item(title, price, qty = 1)
#     transaction = price*qty
#     @total += transaction
#     @transactions << transaction
#     qty.times{@items << title}
#   end
# change #void_last_transaction to 
#   def void_last_transaction
#     @total -= @transactions.pop
#   end
=======
>>>>>>> aed51f8b7cdf4519b3fbe6e35bbd179cf226cef8
