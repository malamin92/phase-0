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
	'5/2.to_f', turning one of the arguments to a float, you'd get 2.5 as the answer. That is the difference between a 
	float and a integer, decimals vs whole numbers.

#####Hours in a year:

```ruby
	puts 365 * 24
```

#####Minutes in a decade:
```ruby
	puts 60*24*365*10
````

#####How does Ruby handle addition, subtraction, multiplication, and division of numbers?
	
	Ruby handles the four basic math operations in a simple way. For addition, user the '+' symbol between
	two numbers, to add them. If the two numbers are integers, you will get an integer answer, if one of them
	is a float, then you will get a decimal in the answer. Subtraction works in the same way with the '-' symbol
	and so does multiplication with the '*' symbol. When it comes to division, you use the '/' symbol. You should
	be aware though, when dividing, don't expect a decimal answer from something like '5/2' as Ruby will only give
	you the quotient and no remainder. Use explicit .to_f on one of the arguments in order to get a decimal response.

#####What is the difference between integers and floats?

	An integer is any number that does not have a decimal. It is an object of the Fixnum class, which you 
	can check by doing something like '2.class' in IRB, it'll return the class of the object you are looking at. 
	When dividing integers, you should never expect a decimal in the output because integer only deals with 
	whole numbers. You should also never use commas when writing numbers in Ruby as they are not interpreted in that 
	way. A float is a an object of the Float class which you can  check by typing '2.3.class' or any other decimal in 
	IRB. A float is a number that has a decimal. When you combine both float and decimal in an expression, like '4.5/2', 
	you will always get a float in return as the answer.

#####What is the difference between integer and float division?

	When doing division, you use the '/' symbol to divide two numbers.  You should be aware though, when dividing, 
	don't expect a decimal answer from something like '5/2' as Ruby will only give you the quotient but no remainder. 
	Since integers only deal with whole numbers, you will get a whole number response. If you use floats as your
	numbers or use .to_f to convert one of the intgers, the result will be a decimal number as the answer. 

#####What are strings? Why and when would you use them?

	String are anything that deals with characters. Strings are objects of the 'string' class which you can
	check by typing '"string".class' in IRB. You can use string when you need to print something out to the string
	or to store a character type in one of your variables. You can concatenate 	a string using 'a' << 'b' or 
	'a' + 'b' which will result in 'ab'. Remember, anything between quotes is a string so '12' is a string with
	a value of '12', if you wanted to add '12' + 1, you couldn't because '12' is a string. You can do something
	like '12'.to_i to convert the string to a number before adding it.

#####What are local variables? Why and when would you use them?

	Local variables exist only in the scope of the current program. You can use them when you are storing a
	variable in a program that you are writing. The variable will be saved for the lifetime of that program,
	unless it is changed. For example you can store num1 = 5, so now you can refer to num1 for the rest
	of the program without having to write 5 all the time. It's useful when you are trying to keep your
	code DRY and saves you a lot of typing when refering to the same object over and over again.

#####How was this challenge? Did you get a good review of some of the basics?

	Yeah, it was fairly simple. I barely had to make any changes to the instructed code in order to
	get the rspec tests to pass, wish it was a bit more challanging. 