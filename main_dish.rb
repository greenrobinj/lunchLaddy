

class Dishs
  attr_accessor :name, :price

  def initialize (name, price)
    @name = name
    @price = price
  end

  def info
    puts "#{@name}, -- $#{@price}"
  end

  def sides
    @side1 = gets.strip.to_i
    @side2 = gets.strip.to_i
    puts " you chose #{side1} and #{side2}"
  end
    



end