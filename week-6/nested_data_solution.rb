# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.collect! do |element| 
	if element.kind_of?(Array)
		element.collect! {|inner| inner += 5}
	else
		element += 5
	end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.collect! do |element|
 if element.is_a?(Array)
   element.collect! do |element|
     if element.is_a?(Array)
       element.collect! do |element|
         element += "ly"
       end
     else
       element += "ly"
     end
   end
 else
   element += "ly"
 end
end
p startup_names

=begin
What are some general rules you can apply to nested arrays?

	When accessing nested arrays, you have to pay attention to the dimensions of the data structure. You may get caught
	in arrayception if you are not careful. Also, you should be aware of the kind of data structures that are nested within
	one another. You may have ana array in an array, or a hash in an array, or you may have an array in a hash. Just be 
	careful about the kind of keys you need to use to access each kind of data structure. Make sure you reach each layer
	of the nested elements. Also, use if statements to check if a an object is a data structure.

What are some ways you can iterate over nested arrays?

	Whenever you have a nested data structure, you may iterate over it just as if it was flat. The only thing you need
	to really remember is that whenever you run into another data structure, you have to make sure you explicitly 
	tell your code that you are dealing with another data structure instead of just an object. For example, if you are
	adding something to every element of an array, but run into another array in the original array, you can't add something
	to that array, so you have to make sure you iterate over those elements too and add to them individually. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? 
What was it and why did you decide that was a good option?

	For the most part, we used methods that I already knew. The only new method that I tried was the #is_a? method which
	takes a class as an argument and returns true if the object it's called on belongs to that class. This is a similar
	method to the #kind_of? method. Other than that, we mostly just relied on the #collect! enumerable to iterate over
	and return values we needed destructively. 
	
=end