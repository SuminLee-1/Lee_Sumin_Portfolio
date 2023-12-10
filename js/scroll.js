// gsap.registerPlugin(ScrollTrigger, ScrollSmoother);

gsap.registerPlugin(ScrollTrigger);
gsap.registerPlugin(ScrollToPlugin);

ScrollTrigger.normalizeScroll(true)


ScrollTrigger.create({
  trigger: "#dec-title",
  pin: true,
  start: "top center",
  end: "+=10",
  marker: true
});

document.querySelector("button").addEventListener("click", e => {

  // parameters: element, smooth, position
  scrollTo("#dec-title", true, "center center");
  
});