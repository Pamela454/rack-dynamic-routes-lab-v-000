class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  def display_price
    puts @price
  end
end
