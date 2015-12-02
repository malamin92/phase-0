 // JavaScript Olympics

// I paired [by myself, with: Mira] on this challenge.

// This challenge took me [#] hours.


// Warm Up

// DOING SOME BRAIN STRETCHES!!

// Bulk Up


function athletesFunction(array){
	for(var index = 0; index < array.length; index++){
		array[index].win = array[index].name + " won the " + array[index].event +" event!";
	}
}

//driver code
var athlete1 = {
	name: "Sarah Hughes",
	event: "Swimming"
}
var athlete2 = {
	name: "Mo Amin",
	event: "Marathon"
}
var test_array = [athlete1, athlete2]
athletesFunction(test_array);
console.log(athlete2.win);

// Jumble your words

function reverseString(string){
	return string.split("").reverse().join("");
}

//driver code:
console.log(reverseString("screw you guys, i'm going home"));

// 2,4,6,8

function getEven(array){
	answer_array = []
	for(var index = 0; index < array.length; index++){
		if (array[index] % 2 === 0){
			answer_array.push(array[index])
		}
	}
	return answer_array
}

//driver code
console.log(getEven([1,2,3,4,5,6,7]))

// "We built this city"

function Athlete(name, age, sport, quote){
	this.name = name,
	this.age = age,
	this.sport = sport,
	this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?

	I liked the use of constructors for JavaScript functions. This is a cool powerful
	feature of JavaScript that adds some powerful functionality to it. In this assignment
	we also used the for loop which I am getting more used to the more we use it. Also, it
	is reinforced that in JavaScript there is less magic compared to Ruby. These are all
	concepts that doing this assignment made more apparent.

What are constructor functions?

	Constructor functions are similar to initialize in Ruby. Though you are not creating a
	new Class like you are Ruby, you are able to create new Objects that take default value
	as the object is constructed. You use constructors just like you would with Classes
	in Ruby in which you create a new variable as an instance of an object and the properties
	of that object will be saved, and different objects can hold different information. 

How are constructors different from Ruby classes (in your research)?

	In JavaScript, the Objects only hold functions defined in the Object itself. However, in
	Ruby classes have many different methods that pertain all classes in Ruby not just the
	specfic created by the programmer. Also, when you create an object in JavaScript and you
	change the property of a constructor method for one Object, the property also changes for
	all the new Objects created for that object. Here is a good example of this:

	//this is one other way of creating a Constructor function
	var myObjectConstructor = function(){
	    this.myProperty = 'this is a property'
	}
	 
	//instantiate our Constructor
	var constructorOne = new myObjectConstructor();
	 
	//change myProperty of the first instance
	constructorOne.myProperty = 'this is a new property';
	 
	//instantiate a second instance of our Constructor
	var constructorTwo = new myObjectConstructor();
	 
	//alert current myProperty of constructorOne instance
	alert(constructorOne.myProperty); //this will alert 'this is a new property'
	  
	 //alert current myProperty of constructorTwo instance
	alert(constructorTwo.myProperty); //this will still alert 'this is a property'

	This does not happen in Ruby, in Ruby all constructors are unique to the object that
	was created and changing the value of one constructor value does not change every
	other instnace of objects created.

*/

