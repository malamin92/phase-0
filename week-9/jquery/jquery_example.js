// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  bodyElement = $('body');
  h1Elements = $('h1');
  imgElements = $('img');
  mascotClass = $('.mascot');


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  $('body > h1').css({'color': 'blue',
					'border': '5px solid black',
					'visibility' : 'hidden'});
  $('.mascot > h1').html('Chorus Frogs!')


//RELEASE 4: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.adoptapond.info/guide_images/Chorus%20Frog.jpg')
  })

  $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })
//RELEASE 5: Experiment on your own
	
$('div img').mouseenter(function () {
   $(this).css({border: '0 solid black'}).animate({
       borderWidth: 4
   });
}).mouseleave(function () {
    $(this).animate({
       borderWidth: 0
   });
});





})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery?

JQuery is a JS API that allows you to dynamically alter elements on your HTML
page. It is cool because the changes that take place do not require your page
to reload. The effects are dynamic and allows you to add a nice touch to your 
pages making them more interesting than just plain old HTML and CSS.

What does jQuery do for you?

JQuery allows you to make dynamic changes to the elements on the DOM. It allows
for changes to the HTML and CSS on you page without reloading the page. This 
allows your to add interestng affects like animations and loops to your
HTML and CSS.

What did you learn about the DOM while working on this challenge?

The DOM elements can be selected and targeted for change via the Jquery API.
These elements are normally static but JQuery allows the browser to make them
more dynamic and robust.

*/
