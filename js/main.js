console.log("Js is fired!");
import { burgerMenu } from "./modules/burgerMenu.js";
import { loopBanner } from "./modules/loopBanner.js";
import { contactForm } from "./modules/contactForm.js";

burgerMenu();
contactForm();

if (document.body.dataset.page === 'home') {
loopBanner();
}

const app = Vue.createApp({
   data() {
     return {
       formData: {
         name: '',
         email: '',
         message: ''
       },
       responseMessage: '',
       errors: '',
       submitted: false
     };
   },
   methods: {
     submitForm() {
       // Send data to PHP file using Fetch API
       fetch('email.php', {
         method: 'POST',
         headers: {
           'Content-Type': 'application/x-www-form-urlencoded',
         },
         body: new URLSearchParams(this.formData),
       })
       .then(response => response.json())
       .then(data => {
         if (data.errors) {
           this.errors = data.errors;
           this.responseMessage = ''; //if by chance the user submitted already and tries again
         } else {
           this.errors = ''; // Might be errors from previous attempts
           this.responseMessage = data.message;
           this.formData = {
             name: '',
             email: '',
             message: ''
           },
           this.submitted = true
         }
       })
       .catch(error => {
         console.error('Error:', error);
         this.errors = ['Opps Something went wrong. Did you lose your internet connection? Please Try Again.'];
         this.responseMessage = '';
       });
     }
   }
 });
 
 app.mount('#app');
 

