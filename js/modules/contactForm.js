export function contactForm() {
    const form = document.querySelector("#contactForm");
    const feedBack = document.querySelector("#feedback");

    if (!form || !feedBack) {
        console.error("Form or feedback element not found.");
        return; // Exit the function if elements are not found
    }

    function regForm(event) {
        event.preventDefault();
        const url = "http://localhost:8888/Lee_Sumin_portfolio/index.php";
        const formData = new FormData(event.currentTarget);

        fetch(url, {
            method: "POST",
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(responseText => {
            console.log(responseText);
            feedBack.innerHTML = "";

            if (responseText.errors) {
                responseText.errors.forEach(error => {
                    const errorElement = document.createElement("p");
                    errorElement.textContent = error;
                    feedBack.appendChild(errorElement);
                });
            } else {
                form.reset();
                const messageElement = document.createElement("p");
                messageElement.textContent = responseText.message;
                feedBack.appendChild(messageElement);
            }
        })
        .catch(error => {
            console.error(error);
            feedBack.innerHTML = "Oops something went wrong. Maybe you're using an older browser, or not connected to the internet. Sorry for the inconvenience.";
        });
    }

    form.addEventListener("submit", regForm);
}
