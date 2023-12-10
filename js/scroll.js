// gsap.registerPlugin(ScrollTrigger, ScrollSmoother);

gsap.registerPlugin(ScrollTrigger);
gsap.registerPlugin(ScrollToPlugin);

ScrollTrigger.normalizeScroll(true)

// create the smooth scroller FIRST!
// let smoother = ScrollSmoother.create({
//   smooth: 2,
//   effects: true,
//   normalizeScroll: true
// });

// pin box-c when it reaches the center of the viewport, for 300px
ScrollTrigger.create({
  trigger: "#dec-title",
  pin: true,
  start: "top center",
  end: "+=10"
});

document.querySelector("button").addEventListener("click", e => {
  // scroll to the spot where .box-c is in the center.
  // parameters: element, smooth, position
  smoother.scrollTo("#dec-title", true, "center center");
  
  // or you could animate the scrollTop:
  // gsap.to(smoother, {
  //  scrollTop: smoother.offset(".box-c", "center center"),
  //  duration: 1
  // });
});