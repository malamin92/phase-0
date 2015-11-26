def serving_size_calc(item_to_make, order_quantity)
  
  #hash
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.include?(item_to_make)

  
  #determine if item_to_make is a key in library hash
  #Return argument error if it isn't
  # error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
  
  
  #Retrieving hash value to determine how many ingredients needed for one serving
  serving_size = library[item_to_make]
  #Determine how many ingredients are left
  left_over_item = order_quantity % serving_size
  
  items_made = order_quantity/serving_size
  
  #Extra feature:
  #Use leftover ingredients to make other items
  #IF leftover ingredients is greater than or equal to 5
  #  Calculate how many cakes to make
  #IF leftover ingredients is greater than 0
  #  Calculate how many cookies to make
  if left_over_item == 6
    extra_item = "Make 1 Cookie and 1 cake."
  elsif left_over_item == 5
    extra_item = "Make 1 Cake."
  else
    extra_item = "Make #{left_over_item} cookies."
  end
    
  
  #When there's no leftover ingredients, return how many items you can make
  #When there is, return how many items you can make + how much leftover and what you can do with it
#   case left_over_item
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{left_over_item} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
  
  if left_over_item == 0
    puts "Calculations complete: Make #{items_made} of #{item_to_make}"
  else
    puts "Calculations complete: Make #{items_made} of #{item_to_make}, you have #{left_over_item} leftover ingredients. Suggested baking items: #{extra_item}"
  end
end



serving_size_calc("pie", 7)
serving_size_calc("pie", 15)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
serving_size_calc("THIS IS AN ERROR", 5)


=begin 
What did you learn about making code readable by working on this challenge?

  In this challenge that legacy code can be extremely confusing at first. There were a lot of unnecessary variables thrown in there.
  The code also did not flow well. When looking at the code initally it was so confusing to figure out what is going on. Ultimately,
  we were able to get the idea of what's going on in the code. The driver code really helped in doing that.

Did you learn any new methods? What did you learn about them?

  We did not learn any new methods when doing this challenge. All the methods we used were pretty simple and things we've used
  before doing this challenge.

What did you learn about accessing data in hashes? 

  When it comes to accessing data in a hash, you should just used the key instead of what was done originallly in this code. Initially,
  the coder used a method to retrieve an array of the values and the refered to that array to get the actual value which made it
  very confusing and it was unnecessary.

What concepts were solidified when working through this challenge?

  In this challenge, I learned to read code caarefully to try to understand what someone else is doing. I also learned that
  driver code can really help when doing that. 

=end