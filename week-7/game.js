 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Avoid detention by guessing the correct page number.
// Goals: Guess answer before Snape throws a fit.
// Characters: Harry, Snape
// Objects: Harry, Snape, Book
// Functions: guess_answer, throws_fit, gets_angrier

// Pseudocode
/*
Create three objects, harry, snape and book.
The harry object will have a success property and a guess funtion which he will use to guess the answer.
The book object will hold the page where the answer is.
The snape object will have an anger property, gets angrier funtion and throw fit function.
The player will keep guessing answers:
	IF the anwer is lower than the page, hermione will tell him to guess higher.
	ELSE IF the answer is higher than the page, hermion will tell him to guess lower.
	ELSE the answer is correct.
IF snapes anger reaches 10, the game is over and Gryffindor gets points taken off!

*/

// Initial Code


// var harry = {
// 	success: false,
// 	guess_answer: function(harrys_guess) {
// 		console.log(book.answer_page)
// 		if (harrys_guess < book.answer_page){
// 			console.log("Hermione whispers: 'Try higher Harry!");
// 			snape.gets_angrier;
// 			if (snape.anger > 9){
// 				snape.throws_fit;
// 			}
// 		}
// 		else if (harrys_guess > book.answer_page){
// 			console.log("Hermione whispers: 'Try lower Harry!");
// 			snape.gets_angrier;
// 			if (snape.anger > 9){
// 				snape.throws_fit;
// 			}
// 		}
// 		else{
// 			console.log("Snape: Lucky guess POTTER...")
// 			console.log("You win!")
// 			success: true;
// 		}
// 	}
// };

// var book = {
// 	answer_page: Math.floor((Math.random()*100)+1)
// };



// var snape = {
// 	anger: 0,
// 	gets_angrier: function() {
// 		this.anger += 1;
// 	},
// 	throws_fit: function() {
// 		console.log("Snape: That's it! 100 points from Gryffindor! And detention for you  POTTTER!")
// 	}
// };


// Refactored Code

var harry = { //book object
	success: false,
	guess_answer: function(harrys_guess) { //changed to more relavant variable name here.
		if (harrys_guess < book.answer_page){
			snape.anger += 1; //changing the property in snape
			if (snape.anger >= 7){
				snape.throws_fit(); //call to function in snape object
			}
			else{
			console.log("Hermione whispers: 'Try higher Harry!");
			}
		}
		else if (harrys_guess > book.answer_page){
			snape.anger += 1;
			if (snape.anger >= 7){
				snape.throws_fit();
			}
			else{
			console.log("Hermione whispers: 'Try lower Harry!");
			}
		}
		else{
			console.log("Snape: Lucky guess POTTER...")
			console.log("You win!")
			success: true;
		}
	}
};

var book = { // book object
	answer_page: Math.floor((Math.random()*100)+1)
};

var snape = { // snape object
	anger: 0,
	throws_fit: function() {
		console.log("Snape: That's it! 100 points from Gryffindor! And detention for you  POTTTER!")
	}
};


//driver code
harry.guess_answer(45); //call to function in harry object
harry.guess_answer(54);
harry.guess_answer(44);
harry.guess_answer(60);
harry.guess_answer(85);
harry.guess_answer(10);
harry.guess_answer(25);



// Reflection
/*
What was the most difficult part of this challenge?

	The most difficult part of this challenge was to think how the objects were going
	to interact with each other. I had to really think about the properties each object
	will hold and at what point they will be altered. Thinking in that way was the most
	difficult along with an idea of coming up with an original game.

What did you learn about creating objects and functions that interact with one another?

	Objects are idependant and hold their own properties. When you want to interact with
	with another object, you have to do it from the object you are currently in or outside
	of the object. In a way, the objects are using each other to change depending on certain
	conditions. Interacting with another object is as easy as naming that object and changing
	its property from within the object you are currently in.

Did you learn about any new built-in methods you could use in your refactored solution? 
If so, what were they and how do they work?

	I learned about the random() function which generate a random number within a certain
	range. I also learned about how it is extremely inconvnient to get input in JavaScript.
	You have to use an external library and even at that point it doesn't really work
	the way I'm used to in other laguages that I've tried.

How can you access and manipulate properties of objects?

	You can access and manipulate objects properties using the . operator. This along with
	the name of the propety you are trying to change helps you refer to the specfic thing
	you are trying to change. This is the same when it comes to propety functions, you can
	just call the function by using the . operator and the name of the function property
	you are trying to call.

*/
