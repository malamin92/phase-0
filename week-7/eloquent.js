// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
	
	var lucky_number = 25, second_lucky_number = 7;
	var super_lucky_number = lucky_number + second_lucky_number;
	console.log(super_lucky_number);

// Program that prompts for food and responds.
	// prompt("What's your favorite food?")
	// ->"pizza"
	// alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle:

var hashes = "#"
for(i = 0; i < 7; i++){
	console.log(hashes)
	hashes += "#"
}
//output:
// #
// ##
// ###
// ####
// #####
// ######
// #######


// Functions
// Complete the `minimum` exercise.

	

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

/*
Questions:
Introduction:
Did you learn anything new about JavaScript or programming in general?
	
	I learned some interesting facts about programming in general as well as JS. For example, the early
	computers were just running binary operations. I didn't know that Netscape was the first browser to 
	include JS. I didn't know ECMAScript and JavaScript meant the same thing. It's cool that JavaScript
	is also used in databases like MongoDB, that's something new to me.

Are there any concepts you feel uncomfortable with?

	There are no cocepts that I feel uncomfortable with.

Values, Types and Operators:
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to 
numbers, arithmetic, strings, booleans, and various operators.

	In JavaScript you can write an exponenet using something like 2.98e8 which is equivalent to 299,800,000,
	this feature is not available in Ruby. Javascript has something called NaN which stands for not a number,
	this is something you get when you try doing a math operation like infinity - infinity, which are JS
	fatures, or 0/0, which in Ruby would lead to an error. JS also has a typeof operator which takes one value
	and returns its type like string or number, Ruby does not. Just like in Ruby however, you can write a string
	statement using "", and seperate lines by using "\n", you can also concatinate strings in JS just like
	in Ruby using the + operator. Comparitors in Js are the same as they are in Ruby like the > or < comparitors,
	they function in the same way in both languages. JavaScript also has a ternary operator just like Ruby does.
	Something I took note of is that JavaScript has the automatic type conversion which Ruby doesn't, this seems
	to be something I need to be careful about when writing JavaScript.

Program Structure:
What is an expression?
	
	An expression is a fragment of code that produces some kind of value. This means almost everything is an 
	expression. For example, 1; is an expression becuase it produces the value 1. 

What is the purpose of semicolons in JavaScript? Are they always required?

	According to Eloquent JavaScript, there are some cases where the semicolon is not requried. However, it is
	advised that we always use a semicolon because the cases where it can be omited are pretty rare, so just to
	be safe we should use s semi-colon to end an expression.

What causes a variable to return undefined?

	You get an undefined return if you return a variable that does not have an assigned value, an empty variable.

Write your own variable and do something to it in the eloquent.js file.

	^Look up.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?

	The console.log in JavaScript is used to output something to the screen in a console or command line. It
	is pretty much the equivalent of puts or print in Ruby. They of course work in different ways but the
	idea of outputting is that same in both languages. 

Write a short program that asks for a user to input their favorite food. 
After they hit return, have the program respond with "Hey! That's my favorite too!" 
(You will probably need to run this in the Chrome console (Links to an external site.) 
rather than node since node does not support prompt or alert). 
Paste your program into the eloquent.js file.

	^Look up.	

Describe while and for loops

	A while loop is a loop that runs until the condition is met. When writing a while loop, something
	must change in order to tell the loop to stop or it will run forever. The code that is inside
	the loop will run over and over again until the stop condition is met also. A for loop is similar
	to the while loop, they can be used interchangeably in most cases. A for loop has three parts,
	a starting point, an ending point and something that increments or decrements. Until the stopping
	condition is met, the code inside the for loop will keep running. The key word break can be used 
	in the loop if it needs to be stopped.

What other similarities or differences between Ruby and JavaScript did you notice in this section?

	There are a lot of similarities and differences between Ruby and JS. I think in terms of syntax,
	a lot of it is the same. It seems like Ruby has more built in methods that JS does. JS also seems
	to be more error prone as it does automatic type conversion. You can't get input in JS from the 
	console, which you can in Ruby. The for loop is different in Ruby than in Java. The while loop
	is the same in both. 

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.


	^Look up.

What are the differences between local and global variables in JavaScript?
	
	

When should you use functions?

	

What is a function declaration?

	

Complete the minimum exercise in the eloquent.js file.

*/