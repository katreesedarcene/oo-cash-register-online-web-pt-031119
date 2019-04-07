class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    @items << title 
  end
  end
  def apply_discount
    
    @total = @total - @discount * 10
    if @discount > 10
   "After the discount, the total comes to $#{@total}." 
    else 
   "There is no discount to apply."
    end
  end
  def items
    @items
end
def void_last_transaction
   @total.clear
 end
  
end
