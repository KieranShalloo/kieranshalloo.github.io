function checkAnimation() {
var elementsToShow = document.querySelectorAll('.show-on-scroll');


    Array.prototype.forEach.call(elementsToShow, function(element, index){
      if (isElementInViewport(element)) {
        setTimeout(
		function(){
			if (isElementInViewport(element)) {
			element.classList.add('is-visible');
			}
    },index*100)
      }
      // else {
      //   element.classList.remove('is-visible');
      // }
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
