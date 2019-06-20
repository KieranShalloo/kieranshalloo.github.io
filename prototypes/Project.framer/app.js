var artboardbg, button;

artboardbg = new Layer({
  x: Align.center,
  y: Align.center,
  height: 667,
  width: 375,
  image: "images/showdown.png"
});

button = new Layer({
  x: 0,
  y: 0,
  width: screen.width
});

button.onTap(function(event, layer) {
  return layer.animate({
    opacity: 0.00,
    scale: 6.00,
    options: {
      repeat: 1
    }
  });
});
