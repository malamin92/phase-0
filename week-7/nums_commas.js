// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .
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
5. Remove initial , before index 0
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

*/

