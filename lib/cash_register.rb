class CashRegister

  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    @total += (price*quantity)
    quantity.times do
    @items << title
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (100 - discount) * total / 100
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items = []
    @total = 0
  end
end
