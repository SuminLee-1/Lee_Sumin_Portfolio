console.log("Js is fired!");

$(document).ready(function(){
	$(".hamburger").click(function(){
		 $(this).toggleClass("is-active");
		 $("#burger-con").toggleClass("show-menu"); // Toggle class to show/hide the menu
	});
});
