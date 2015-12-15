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
