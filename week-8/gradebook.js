/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with:]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
// var gradebook = {};
// gradebook.Joseph = {};
// gradebook.Susan = {};
// gradebook.William = {};
// gradebook.Elizabeth = {};
// gradebook.Joseph.testScores = scores[0];
// gradebook.Susan.testScores = scores[1];
// gradebook.William.testScores = scores[2];
// gradebook.Elizabeth.testScores = scores[3];
// gradebook.addScore = function(name, score){
// 	gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name){
// 	return average(gradebook[name].testScores);
// };

// function average(array){
// 	var total = 0
// 	for(index = 0; index < array.length; index++){
// 		total+=array[index];
// 	}
// 	return total/array.length;
// }

// console.log(gradebook.getAverage("Joseph"));



// __________________________________________
// Refactored Solution

var gradebook = {};
for(index = 0; index < students.length; index++){
	gradebook[students[index]] = {};
}

for(index = 0; index < scores.length; index++){
	gradebook[students[index]].testScores = scores[index];
}

gradebook.addScore = function(name, score){
	gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
	return average(gradebook[name].testScores);
};

function average(array){
	var total = 0
	for(var i in array){
		total+=array[i];
	}
	return total/array.length;
}

console.log(gradebook.getAverage("Joseph"));






// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
	
	I learned that you have to set the function as a property of the object. Then you
	write the function just as you would normally. Also, one thing that was causing us
	errors is the explicit returns, so I learned to make sure to return something at the
	end of functions explicitly if needed. 

How did you iterate over nested arrays in JavaScript?

	We just used a for loop to iterate over the array. We used the index to refer to a
	certain point of the array. This works the same way as it does in Ruby. In javascript
	you have to be a little careful about the way you refer to properties in objects and
	have to chose when to use [] and . notation carefully. Otherwise, iterating over arrays
	in JavaScript vs Ruby is almost identical.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

	The only new trick I learned doing this assignment was to use the shorter method
	of the for loop, which kind of automates the looping process, take a look at the original
	for loop vs the refactored for loop and you'll see they're doing the samething, but the
	second method is much more stramlined.

*/






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
