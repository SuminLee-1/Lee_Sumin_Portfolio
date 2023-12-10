

(() => {


   
   const canvas = document.querySelector("#explode-view");
   const context = canvas.getContext("2d");
   canvas.width = 1280;
   canvas.height = 720;
   const frameCount = 121;
   const images = [];

   const logo =  {
      frame: 0
   }


   for (let i = 0; i < frameCount; i++) {
      // console.log(i);
      const img = new Image();


      img.src = `images/hero${(i).toString().padStart(4, '0')}.png`;
      images.push(img);
   }

   gsap.to(logo, {
      frame: 121,
      snap: "frame",
      scrollTrigger: {
         trigger: "#explode-view", 
         pin: true,
         scrub: 1,
         // markers: true,
         start: "top"
      },

      onUpdate: render
   })

   images[0].addEventListener("onload", render);

   function render() {
      context.clearRect(0, 0, canvas.width, canvas.height);
      context.drawImage(images[logo.frame], 0, 0);

   }

})();
