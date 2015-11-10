#####What does puts do?
	
	Puts outputs something to the screen, short for 'put string'. It prints whatever is 
	after the 'puts' out to screen that is viewing the program. It also puts a new line after 
	that output, unlike 'print'. Puts also returns nil value along with the output to the screen, 
	nil is the reutrn value of the string object.


#####What is an integer? What is a float?

	An integer is any number that does not have a decimal. It is an object of the Fixnum class, which you 
	can check by doing something like '2.class' in IRB, it'll return the class of the object you are looking at. 
	When dividing integers, you should never expect a decimal in the output because integer only deals with 
	whole numbers. You should also never use commas when writing numbers in Ruby as they are not interpreted in that 
	way. A float is a an object of the Float class which you can  check by typing '2.3.class' or any other decimal in 
	IRB. A float is a number that has a decimal. When you combine both float and decimal in an expression, like '4.5/2', 
	you will always get a float in return as the answer.

#####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

	When doing integer division, you will always get the whole number of the answer and not the remainder. 
	Meaning if you did '5/2', you'd get 2 as the answer. This is because in that situation, there is a remainder 
	of 1, and integers do not include the decimal of .5 as part of the answer. Integer division can be exemplified 
	by the following real life situation: if you had 5 eggs, and each person had to eat 2 eggs to be full, how many 
	people would be full off the 5 eggs? It would only fill 2 people because the one extra egg would not be enough to 
	fill up the last person. Float division is more straight forward, as it will  give you a specfic decimal answer. 
	This make float really useful for scientific problems where you need a precise answer to the decimal. So if you did 
	'5/2.to_f', turning one of the asnwers to a float, you'd get 2.5 as the answer. That is the difference between a 
	float and a integer, decimals vs whole numbers.

#####Hours in a year:

```ruby
	puts 365 * 24
```

#####Minutes in a decade:
```ruby
	puts 60*24*365*10
````