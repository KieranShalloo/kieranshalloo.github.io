# Framer.Device.customize
#     deviceType: Framer.Device.Type.Tablet
#     screenWidth: 720
#     screenHeight: 1024
#     deviceImage: “http://f.cl.ly/items/001L0v3c1f120t0p2z24/custom.png”
#     deviceImageWidth: 800
#     deviceImageHeight: 1214
#     devicePixelRatio: 1



artboard = new Layer
	width: 375
	height: 667
	image: 'images/appBG.jpg'

button = new Layer
	parent: artboard
	width: 45
	height: 22
	x: 310
	backgroundColor: 'transparent'
	y: 85

button2 = new Layer
	parent: artboard
	width: 45
	height: 22
	x: 310
	backgroundColor: 'transparent'
	y: 137




videoLayer1 = new VideoLayer
    width: 45, height: 22
    video: "images/toggle.mp4"
    x: 310,
		y: 85
		parent: artboard

videoLayer2 = new VideoLayer
    width: 45, height: 22
    video: "images/toggle.mp4"
    x: 310
		y: 137
		parent: artboard

button.onClick ->
   videoLayer1.player.play()
#
button2.onClick ->
   videoLayer2.player.play()
