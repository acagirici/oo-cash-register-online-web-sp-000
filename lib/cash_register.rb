class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, total_items = 1)
    if total_items>1
      i=0 
      while i<total_items
      @items << title
      i+=1
    end
  else
    @items << title
  end
  @total += price*total_items
  @last_transaction_amount = @total 
  @total
  end 
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
   def void_last_transaction
    @total -= @last_transaction_amount
    @discount += 0.99
  end
  
end
