# 1. Greets and prompts a user to input name
# 2. Provides a menu selection for user to navigate through the application: the menu should provide options to either create a new pizza, 
#         or see a list of existing pizzas.
# 3. Program should not exit unless the user types in 'exit'
# 4. The application should provide a good control flow.

PIZZASARRAY = []

def init
  puts "What is your name?"
  name = gets.strip
  puts "Hi #{name} what would you like to do?"
  pizza_menu
end

def pizza_menu
  puts "1. Create a New Pizza"
  puts "2. See list of Pizzas"
  puts "Type, exit, to leave"
  selection = gets.strip
  selection_choice(selection)
end

def selection_choice(selection)
  while selection != "exit"
    if (selection === "1")
      create_pizza
    elsif (selection == "2")
      showlist_pizza
    else
      puts "Choose 1, 2, or exit"
    end
    selection = "exit"
    pizza_menu
  end
end

def create_pizza
  puts "What is the name of your pizza?"
  pizza_name = gets.strip
  puts "What are your toppings?"
  pizza_toppings = gets.strip
  puts "What is your choice in crust?"
  pizza_crust = gets.strip
  puts "What is your pizza size?"
  pizza_size = gets.strip
  new_pizza = {name:pizza_name, toppings:pizza_toppings, crust:pizza_crust, size:pizza_size}
  PIZZASARRAY << new_pizza
  puts "You've ordered a #{pizza_size} pizza #{pizza_crust} with (#{pizza_toppings}) named #{pizza_name}"
end

def showlist_pizza
  PIZZASARRAY.each do |pizza|
  pizza_details(pizza)
  end
end

def pizza_details(pizza)
  puts "Pizza Name #{pizza[:name]}, Pizza Size #{pizza[:size]}, Pizza Crust #{pizza[:crust]}, Pizza Toppings #{pizza[:toppings]}"
end