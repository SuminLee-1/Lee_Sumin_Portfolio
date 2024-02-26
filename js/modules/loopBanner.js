export function loopBanner() {

   const banner = document.querySelector('#looping-t');
   const bannerText = banner.querySelectorAll('.infinity_inside');
   const bannerWidth = banner.offsetWidth;
   let offset = 0;

   function animateBanner() { // Renamed function to avoid naming conflict
      offset -= .1;
      if (offset < -bannerWidth) {
        offset = 0;
      }

      bannerText.forEach((text) => {
        text.style.transform = `translateX(${offset}px)`;
      });

      requestAnimationFrame(animateBanner); // Updated to use the renamed function
   }

   animateBanner(); // Call the renamed function to start the animation
}
