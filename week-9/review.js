/*
pseudocode:
1. create a new list:
	input: nothing
	output: an new object that will have a empty object as property
	1. create a new object constructor List.
	2. set initial items list as empty object.
2 add an item to a list
	input: item name, quantity
	output: an updated object with property of item and value of quantity
	1. create a prototype function that will take and item and quantity as arguments
	2. create a new object in the items object with item as property and quantity as value
3. remove an item
	input: item name
	output: object with item removed
	1. create a prototype function that will take an item name as an argument
	2. delete the items object property with the item_name
4. update an item
	input: item name, quantity
	output: updated object with new quantity
	1. create a prototype function that will take item name, and the quantity
	2. update items object where item name is with new quanity
5. print list
	input: nada
	output: printed list of items and quantity
	1. iterate through each item in the items object
	2. print out each item and quantity to the console on a new line 
*/
function List(){
	this.items = {};
} 

List.prototype.addItem = function(item_name, quantity){
	this.items[item_name] = quantity; 
}

List.prototype.removeItem = function(item_name){
	delete this.items[item_name];
}

List.prototype.updateItem = function(item_name, quantity){
	this.items[item_name] = quantity;
}

// List.prototype.printList = function(){
// 	console.log(this.items);
// }

//recatored print list, looks much neater and skips lines
List.prototype.printList = function(){
	for(var item in this.items){
		console.log(item + ": " + this.items[item]);
	}
}

//driver code
my_list = new List;
my_list.addItem("celery", 1);
my_list.addItem("brocoli", 5);
my_list.addItem("coliflower", 8);
my_list.printList();//{ celery: 1, brocoli: 5, coliflower: 8  }
my_list.removeItem("celery");
my_list.printList();
my_list.updateItem("brocoli", 2);
my_list.printList();
