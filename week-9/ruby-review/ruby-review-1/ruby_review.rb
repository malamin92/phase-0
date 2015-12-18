# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
1. define a method to reverse words in a given sentence
	input: a string
	output: a string where the words are reversed 
2. take the input string and split the words
3. iterate over each word and reverse it
4. join the new array with a space between each word
=end


# Initial Solution
# def reverse_words(sentence)
# 	words_array = sentence.split(" ")
# 	reversed_words = words_array.collect{|word| word.reverse}
# 	reversed_words.join(" ")
# end

# Refactored Solution
def reverse_words(sentence)
	sentence.split(" ").collect{|word| wrod.reverse}.join(" ")
end




# Reflection