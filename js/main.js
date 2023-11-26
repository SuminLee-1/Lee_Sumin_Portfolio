console.log("Js is fired!");

(function(){
	let button = document.querySelector(".hamburger");
	let burgerCon = document.querySelector("#burger-con");

	function hamburgerMenu() {
		burgerCon.classList.toggle("show-menu");
		button.classList.toggle("is-active");
	}

	button.addEventListener("click", hamburgerMenu);
})();
