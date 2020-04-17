function checkAnimation() {
var elementsToShow = document.querySelectorAll('.show-on-scroll');


    Array.prototype.forEach.call(elementsToShow, function(element, index){
      if (isElementInViewport(element)) {
        setTimeout(function(){element.classList.add('is-visible');},index*200)
      } else {
        element.classList.remove('is-visible');
      }
    });
}


// Helper function from: http://stackoverflow.com/a/7557433/274826
function isElementInViewport(el) {
  // special bonus for those using jQuery
  if (typeof jQuery === "function" && el instanceof jQuery) {
    el = el[0];
  }
  var rect = el.getBoundingClientRect();
  return (
    (rect.top <= 0
      && rect.bottom >= 0)
    ||
    (rect.bottom >= (window.innerHeight || document.documentElement.clientHeight) &&
      rect.top <= (window.innerHeight || document.documentElement.clientHeight))
    ||
    (rect.top >= 0 &&
      rect.bottom <= (window.innerHeight || document.documentElement.clientHeight))
  );
}
//triggered every time the scrolling event occurs
$(window).scroll(function(){
    checkAnimation();
});



// // Detect request animation frame
// var scroll = window.requestAnimationFrame ||
//              // IE Fallback
//              function(callback){ window.setTimeout(callback, 1000/60)};
// var elementsToShow = document.querySelectorAll('.show-on-scroll');
//
// function loop() {
//
//     Array.prototype.forEach.call(elementsToShow, function(element){
//       if (isElementInViewport(element)) {
//         element.classList.add('is-visible');
//       } else {
//         element.classList.remove('is-visible');
//       }
//     });
//
//     scroll(loop);
// }
//
// // Call the loop for the first time
// loop();
//
// // Helper function from: http://stackoverflow.com/a/7557433/274826
// function isElementInViewport(el) {
//   // special bonus for those using jQuery
//   if (typeof jQuery === "function" && el instanceof jQuery) {
//     el = el[0];
//   }
//   var rect = el.getBoundingClientRect();
//   return (
//     (rect.top <= 0
//       && rect.bottom >= 0)
//     ||
//     (rect.bottom >= (window.innerHeight || document.documentElement.clientHeight) &&
//       rect.top <= (window.innerHeight || document.documentElement.clientHeight))
//     ||
//     (rect.top >= 0 &&
//       rect.bottom <= (window.innerHeight || document.documentElement.clientHeight))
//   );
// }
