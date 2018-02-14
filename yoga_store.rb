@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

@shopping_cart = []
@total_price = 0

# 1) Print a list of products:
puts "Welcome to our Yoga-Store! These are our products:"
@products.each {|item| puts "Name: #{item[:name]}\nPrice: #{item[:price]} \nref.num: #{item[:reference_number]} \n\n" }

# 2) User buys...

# Buy which item?
def purchase_item
  puts "\nPlease choose a product by entering the ref.num."
  user_input = gets.to_i

  @products.each{|item|
    if item[:reference_number] == user_input
      @shopping_cart.push(item[:name])
      @total_price += item[:price]
    end
  }
  puts "You have added #{@shopping_cart} to your shopping cart. \nThe current ammount to pay is #{@total_price} €"
  checkout
end


# Buy another item?
def checkout
  puts "\nDo you want to buy more? (Y/N)"
  user_choice = gets.chomp

  if user_choice.upcase == "Y"
    purchase_item
  else
    puts "\nThank you for shopping. Please pay #{@total_price} €"
  end
end

purchase_item

=begin unless yesno.upcase == "n"
  user_buys_stuff
=end

# && val == user_input
