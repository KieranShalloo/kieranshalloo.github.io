var artboard, button1, button2, button3, videoLayer1, videoLayer2, videoLayer3;

artboard = new Layer({
  width: 375,
  height: 667,
  image: "images/framer_bg.png"
}, button1 = new Layer({
  x: 329,
  y: 190,
  width: 34,
  height: 34,
  backgroundColor: 'transparent',
  parent: artboard
}), button2 = new Layer({
  x: 20,
  y: 600,
  width: 333,
  height: 50,
  backgroundColor: 'transparent',
  parent: artboard
}), button3 = new Layer({
  x: 20,
  y: 525,
  width: 333,
  height: 50,
  backgroundColor: 'transparent',
  parent: artboard
}));

videoLayer1 = new VideoLayer({
  video: "images/framer_render1.mp4",
  width: 375,
  height: 667,
  opacity: 0,
  parent: artboard
});

videoLayer2 = new VideoLayer({
  video: "images/framer_render2.mp4",
  width: 375,
  height: 667,
  opacity: 0,
  parent: artboard
});

videoLayer3 = new VideoLayer({
  video: "images/framer_render3.mp4",
  width: 375,
  height: 667,
  opacity: 0,
  parent: artboard
});

button1.onClick(function() {
  videoLayer1.opacity = '100';
  return videoLayer1.player.play();
});

button2.onClick(function() {
  videoLayer2.opacity = '100';
  return videoLayer2.player.play();
});

button3.onClick(function() {
  videoLayer3.opacity = '100';
  return videoLayer3.player.play();
});
