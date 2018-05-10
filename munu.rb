require_relative "main_dish"

#Dishs.new

#dish
@nuggets = Dishs.new("Nuggets", 4.50)
@pizza = Dishs.new("Pizza", 5.0)
@wings = Dishs.new("Wing", 4.50)
#side
@mac = Dishs.new("Mac&cheesse", 2.50)
@salad = Dishs.new("Salad", 8.50)
@coke = Dishs.new("Coke", 1.50)

@dish = [
  @nuggets,
  @pizza,
  @wings
]
@side = [
  @mac,
  @salad,
  @coke
]

#@small_lunch = [@side1 , @side2]


def menu
  puts "------MENU------"
  puts "select eather"
  puts "1) main dish"
  puts "2) side dish"
  choice = gets.strip.to_i
  #menu_choice
end





def main_dish 
  puts "what would you like for your main course?"
  @dish.each.with_index do |food, value|
    list_index = value +1
    print "#{list_index})"
    food.info
  end
  case 
  @big_lunch = gets.strip.to_i
  when 1
    @big_lunch = @nuggets.info
    puts "You have Nuggets"
  when 2
    @big_lunch = @pizza.info
    puts "You have Pizza"
  when 3
    @big_lunch = @wings.info
    puts "You have Wings"
  else
    "What do you want for lunch? "
      menu
    end
  side_dish
end
    
def side_dish 
  puts " what two sides would you like?"
  @side.each.with_index do |pickle, value|
   list_index = value +1 
   print "#{list_index})"
    pickle.info
  end

  case lunch1
    @small_lunch1 = gets.strip.to_i
  when 1
    @small_lunch1 = @mac.info
    puts "Whats your second choice?"
    lunch2
  when 2
    @small_lunch1 = @salad.info
    puts "Whats your second choice?"
    lunch2
  when 3
    @small_lunch1 = @coke.info
    puts "Whats your second choice?"
    lunch2
  else
    "Whats it going to be?"
    side_dish
  end

  case lunch2
    @small_lunch2 = gets.strip.to_i
  when 1
    @small_lunch2 = @mac.info
    puts " Good "
  when 2
    @small_lunch2 = @salad.info
    puts " Good "
  when 3
    @small_lunch2 = @coke.info
    puts " Good "
  else
    puts "Well... you want one of these of not"
    side_dish
  end
puts " You have" @big_lunch"," @small_lunch1", and "@small_lunch2"."
end

loop do
  case menu
  when 1
    main_dish
  when 2
    side_dish
  else
    puts "** Please selcet eather 1 or 2 **"
  end

end


menu

