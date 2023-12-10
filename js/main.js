console.log("Js is fired!");


// const player = new plyr("video");

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



// loop text banner

const banner = document.querySelector('#looping-t');
const bannerText = banner.querySelectorAll('.infinity_inside');
const bannerWidth = banner.offsetWidth;
let offset = 0;

function loopBanner() {
  offset -= .1;
  if (offset < -bannerWidth) {
    offset = 0;
  }

  bannerText.forEach((text) => {
    text.style.transform = `translateX(${offset}px)`;
  });

  requestAnimationFrame(loopBanner);
}

loopBanner();


