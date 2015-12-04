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
// 	guess_answer: function(page_number) {
// 		console.log(book.answer_page)
// 		if (page_number < book.answer_page){
// 			console.log("Hermione whispers: 'Try higher Harry!");
// 			snape.gets_angrier;
// 			if (snape.anger > 9){
// 				snape.throws_fit;
// 			}
// 		}
// 		else if (page_number > book.answer_page){
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

var harry = {
	success: false,
	guess_answer: function(page_number) {
		console.log(book.answer_page)
		if (page_number < book.answer_page){
			console.log("Hermione whispers: 'Try higher Harry!");
			snape.gets_angrier;
			if (snape.anger > 9){
				snape.throws_fit;
			}
		}
		else if (page_number > book.answer_page){
			console.log("Hermione whispers: 'Try lower Harry!");
			snape.gets_angrier;
			if (snape.anger > 9){
				snape.throws_fit;
			}
		}
		else{
			console.log("Snape: Lucky guess POTTER...")
			console.log("You win!")
			success: true;
		}
	}
};

var book = {
	answer_page: Math.floor((Math.random()*100)+1)
};



var snape = {
	anger: 0,
	gets_angrier: function() {
		this.anger += 1;
	},
	throws_fit: function() {
		console.log("Snape: That's it! 100 points from Gryffindor! And detention for you  POTTTER!")
	}
};





// Reflection
//
//
//
//
//
//
//
//