# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  return nil if list_of_words.empty?

  shortest = list_of_words[0]
  i = 1
  while(i < list_of_words.length)
  	shortest = list_of_words[i] if list_of_words[i].size < shortest.size
  	i += 1
  end
  return shortest
end

