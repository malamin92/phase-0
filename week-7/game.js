 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Avoid detention before 
// Goals:
// Characters: Harry, Malfoy
// Objects:
// Functions:

// Pseudocode
//
//
//
//
//

// Initial Code


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

//driver code









// Refactored Code






// Reflection
//
//
//
//
//
//
//
//