# Simple Substrings

# I worked on this challenge [by myself, with: Mira].

def welcome(address)
  address_array = address.split(" ")
  if address_array.include?("CA")
    return "Welcome to California"
  else
    return "You should move to California"
  end
end


# Create a method called welcome that accepts an address as a single string.

# It returns "Welcome to California" if the address includes "CA" and "You should move to California" otherwise.

# (This is an old joke from back in the day when Dev Bootcamp was only in San Francisco. Don't worry, you don't have to move here. There isn't enough water for everyone as it is!)

# # Your Solution Below