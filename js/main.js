console.log("Js is fired!");
import { burgerMenu } from "./modules/burgerMenu.js";
import { loopBanner } from "./modules/loopBanner.js";
import { contactForm } from "./modules/contactForm.js";

burgerMenu();
contactForm();

if (document.body.dataset.page === 'home') {
loopBanner();
}



