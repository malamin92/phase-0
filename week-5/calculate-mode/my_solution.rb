
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Mira Scarvalone]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? an array of either strings or numbers
# What is the output? (i.e. What should the code return?) an array of the most frequent values
# What are the steps needed to solve the problem?
# 1. loop through array, creating hash with default value zero
# 2. add 1 to value each time key appears
# 3. now we have a hash mapping each element of the array to its count
# 4. sort count values to find maximum
# 5. Find all keys with value equal to maximum above
# 6. push these keys to an array


# 1. Initial Solution
# def mode(array)
#  count_hash = Hash.new(0)

#  array.each do |element|
#    count_hash[element] += 1
#  end

#  mode = count_hash.values.sort[count_hash.length-1]

#  answer_hash = count_hash.select {|x,y| y == mode}
#  answer_array = []

#  answer_hash.each_key do |key|
#    answer_array << key
#  end

#  return answer_array
# end

# p mode([1,2,1,2,3])

# 3. Refactored Solution

def mode(array)

 count_hash = Hash.new(0)
 #This is equivqalent to the .inject method, I feel like this is more readable.
 array.each { |element| count_hash[element] += 1 }
 count_hash.select { |k,v| v == count_hash.values.max }.keys


 end

p mode([1,2,1,2,3])



# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?

	We used arrays and hashes. The reason for the array is abovious, it was part of the instructions, but it was
	also helpful because of the enumerable methods you can apply to an array. We needed a way to go through each
	element of the arrray and count the amount of times is shows up in the code. The .each method of an array helped
	us do that. We used the hash method to keep an index of keys and values that have realate to each other, that way
	we were able to easily refer to each key and value easily and get a count of the keys.


Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 	

	Yes, we met in person and it was much easier to work that way. It was easier to talk through problems and also
	have pen and paper in front us so we can demonstrate what we were thinking. Pseudocoding helped us have
	clear steps we needed to accomplish in order to get to a solution.

What issues/successes did you run into when translating your pseudocode to code?

	One issue we ran into was reutrning more than one element in the answer array. Initially, we didn't know anything
	the .values and .keys method of a hash, so we had to think of a way to store more than one key with a particular
	value into an array. We used the .each_method and just pushed the keys onto a hash essentially, but we found
	a better solution in the refractoring step which allowed us to just return all the keys with one method (.keys),
	which made the code much cleaner.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

	We used the .each and .select methods to itterate through the content. These are basic enumerable methods so
	it was not very difficult to implement. When refactoring, we found this method called .keys which allowed us to
	use less itterators in our solution. We also found a .inject method, but we thought our code looked clearner
	and more readable without a .inject method. Essentially, we were able to get our code down to 3 lines instead of
	the long solution we had before.

=end
