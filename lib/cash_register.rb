class CashRegister
  
  attr_accessor :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction_amount = []
  end 
  
  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price
  end
  
  def void_last_transaction
    @total -= @last_transaction_amount
  end
end 
