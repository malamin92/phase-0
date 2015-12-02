// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Mira.
/*
Pseudocode
Pseudocode
input: function that takes integer as input
output: string of number separated by commas every 3 spaces

1. convert integer to string
2. reverse string backwards
2. split string backwards into array
3. make an empty string variable
4. iterate through array, IF index % 3 == 0, insert comma into string variable (from step 4), ELSE insert element
5. Remove comma at the end of the string
*/

// Initial Solution
// function separateComma(number){
// 	var number_string = number.toString();
// 	var numbers_array = number_string.split("").reverse();
// 	var answer_array = []
// 	var index = 0
// 	while (index < numbers_array.length){
// 		if (index % 3 === 0){
// 			answer_array.unshift(",");
// 		}
// 		answer_array.unshift(numbers_array[index]);
// 		index++;
// 	}
// 	var answer_string = answer_array.join("");
// 	return answer_string.slice(0, answer_string.length-1);

// }

// Refactored Solution

function separateComma(number){
	var numbers_array = number.toString().split("").reverse();
	var answer_array = []
	for (var index = 0; index < numbers_array.length; index ++){ //use for loop here less lines and as readable
		if (index % 3 === 0){
			answer_array.unshift(",");
		}
		answer_array.unshift(numbers_array[index]);
	}
	return answer_array.join("").slice(0, answer_array.join("").length-1);
}

// Your Own Tests (OPTIONAL)
console.log(separateComma(12344325));
console.log(separateComma(12345));
console.log(separateComma(1434234232345));
console.log(separateComma(145));
console.log(separateComma(123423442342));

// Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

	Yes, I approached it differently than in Ruby. Javascript isn't as exressive as Ruby is
	so I had to consider how the logic will be more manual than Ruby is. Even though the 
	approach was different, JS and Ruby still have a lot in common, so it wasn't completely 
	out left field.

What did you learn about iterating over arrays in JavaScript?

	Well, there is no .each or enumerable methods in JS, so it is a bit different. Instead
	we used the while and for loops in order to solve problems. Iterating over arrays in JS
	is a lot more manual and less "magic" than in Ruby. I think in a way it's better because
	it's a lot more visual in JS than in Ruby because the magic is ommited.

What was different about solving this problem in JavaScript?

	In a lot of the ways, it was the same. The way it was different was the fact that you
	had to itterate through elements manually. Other than that, solving the problem requires
	programming logic similar to that of Ruby. When refactoring, we didn't really get to
	shorten methods by using "magic" methods like we were able to in Ruby.

What built-in methods did you find to incorporate in your refactored solution?

	We used the unshift method, reverse, join and slice. These methods also exist in Ruby
	which was nice to see. For the most part it seems that JS has all the basic methods
	that Ruby comes in from the getgo. 
*/

