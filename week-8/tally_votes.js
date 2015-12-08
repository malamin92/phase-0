// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
GETTING VOTE COUNTS

1. Go through each property in votes.
2. For each property, go through its sub property. (for example "president")
3. Access the values of that property.
  IF property of the votes exits in votecount, increment value at name by one.
  ELSE create a new name property within the sub property and assign it value of 1.


FINDING WINNERS

1. Go through each property of the voteCount object, (example president.)
2. 

*/



// __________________________________________
// Initial Solution

// for(var i in votes){
//   for(var j in voteCount){
//     if ()
//   }
// }



// for(var i in votes){
//  if (voteCount.vicePresident.hasOwnProperty(votes[i]["vicePresident"])) {
//    voteCount.vicePresident[votes[i].vicePresident] += 1;;
//  }
//  else {
//    voteCount.vicePresident[votes[i].vicePresident] = 1;
//  }
// }

// for(var i in votes){
//  if (voteCount.secretary.hasOwnProperty(votes[i]["secretary"])) {
//    voteCount.secretary[votes[i].secretary] += 1;;
//  }
//  else {
//    voteCount.secretary[votes[i].secretary] = 1;
//  }
// }

// for(var i in votes){
//  if (voteCount.treasurer.hasOwnProperty(votes[i]["treasurer"])) {
//    voteCount.treasurer[votes[i].treasurer] += 1;;
//  }
//  else {
//    voteCount.treasurer[votes[i].treasurer] = 1;
//  }
// }

// var sortable = [];
// for(var student in voteCount.president){
//   sortable.push([student, voteCount.president[student]])
// }
// sorted_votes = sortable.sort(function(a,b){return b[1] - a[1]});
// officers.president = sorted_votes[0][0];

// var sortable = [];
// for(var student in voteCount.vicePresident){
//   sortable.push([student, voteCount.vicePresident[student]])
// }
// sorted_votes = sortable.sort(function(a,b){return b[1] - a[1]});
// officers.vicePresident = sorted_votes[0][0];

// var sortable = [];
// for(var student in voteCount.secretary){
//   sortable.push([student, voteCount.secretary[student]])
// }
// sorted_votes = sortable.sort(function(a,b){return b[1] - a[1]});
// officers.secretary = sorted_votes[0][0];

// var sortable = [];
// for(var student in voteCount.treasurer){
//   sortable.push([student, voteCount.treasurer[student]])
// }
// sorted_votes = sortable.sort(function(a,b){return b[1] - a[1]});
// officers.treasurer = sorted_votes[0][0];

// __________________________________________
// Refactored Solution
for(var j in officers){
  for(var i in votes){
   if (voteCount[j].hasOwnProperty(votes[i][j])) {
     voteCount[j][votes[i][j]] += 1;;
   }
   else {
     voteCount[j][votes[i][j]] = 1;
   }
  }
}

for(var j in officers){
    var unsorted_votes = [];
    for(var student in voteCount[j]){
  unsorted_votes.push([student, voteCount[j][student]])
}
sorted_votes = unsorted_votes.sort(function(a,b){return b[1] - a[1]});
officers[j] = sorted_votes[0][0];
}




// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
  
  I learned that you have to set the function as a property of the object. Then you
  write the function just as you would normally. Also, one thing that was causing us
  errors is the explicit returns, so I learned to make sure to return something at the
  end of functions explicitly if needed. 

Were you able to find useful methods to help you with this?

  The sort method was very useful in this part. This sort method is very similar to the
  sort method in Ruby. Instead of using <=> like in Ruby, you use the - in JavaScript. This
  helped us get a sorted array of votes in this assignment. Also, the push method is
  very similar to the one in Ruby as well, it basically pushed the item specified into
  the array you want to append.

What concepts were solidified in the process of working through this challenge?

  The one concept that was solidified to me the most was the fact that you need use
  [] whenever you want to refer to the name of a property. Using the . notation will
  look for properties of the thing you're refering to and that was giving us errors
  a lot, but we eventually figured out that you just need to replace the . notation
  with brackets. Overall, this whole assignment was helpful in thinking about objects
  going into objects, or nested objects.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
