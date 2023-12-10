console.log("Js is fired!");


// burger menu
(function(){
	let button = document.querySelector(".hamburger");
	let burgerCon = document.querySelector("#burger-con");

	function hamburgerMenu() {
		burgerCon.classList.toggle("show-menu");
		burgerCon.classList.toggle("slide-toggle");
		button.classList.toggle("is-active");
	}

	button.addEventListener("click", hamburgerMenu);
})();

//contact button


