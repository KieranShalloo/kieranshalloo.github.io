pictureAndSound = new Layer
	x: 0
	y: 0
	backgroundColor: "transparent"
	width: 1280
	height: 720

bG = new Layer
	parent: pictureAndSound
	x: 0
	y: -134
	backgroundColor: "transparent"
	width: 1280
	height: 855

BG_Colour = new Layer
	parent: bG
	y: 135
	width: 1280
	height: 720
	backgroundColor: '#00050F'

body = new Layer
	parent: pictureAndSound
	x: 64
	y: 110
	backgroundColor: "transparent"
	width: 1151
	height: 553

line = new Layer
	parent: body
	x: 746
	y: 24
	width: 2
	height: 528

copy = new TextLayer
	parent: body
	x: 0
	y: 0
	width: 699
	text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,."
	fontSize: 24
	fontFamily: "Helvetica"
	letterSpacing: -1.1
	textAlign: "left"
	color: "rgba(182,185,191,1)"

button = new Layer
	parent: body
	x: 801
	y: 0
	backgroundColor: "transparent"
	width: 350
	height: 60

fill19 = new Layer
	parent: button
	x: 0
	y: 0
	width: 350
	height: 60
	borderWidth: 2
	backgroundColor: "rgba(0,0,0,0.3)"
	borderRadius: 10

button_highlight = new Layer
	parent: button
	width: 350
	height: 60
	borderRadius: 10
	image: "images/Untitled-1.png"
	opacity: 1.00
	
	
done = new TextLayer
	parent: button
	x: 112
	y: 17
	text: "Check Speed"
	fontSize: 22
	fontFamily: "Helvetica"
	textAlign: "center"
	color: "rgba(235,235,235,1)"

buttonCopy = new Layer
	parent: body
	x: 801
	y: 81
	backgroundColor: "transparent"
	width: 350
	height: 60

fill19_2 = new Layer
	parent: buttonCopy
	x: 0
	y: 0
	width: 350
	height: 60
	borderWidth: 2
	backgroundColor: "rgba(0,0,0,0.3)"
	borderRadius: 10
	
fill19_3 = new Layer
	parent: buttonCopy
	x: 0
	y: 80
	width: 350
	height: 60
	borderWidth: 2
	backgroundColor: "rgba(0,0,0,0.3)"
	borderRadius: 10

one_2 = new TextLayer
	parent: buttonCopy
	x: 120
	y: 95
	text: "Check error"
	fontSize: 22
	fontFamily: "Helvetica"
	textAlign: "center"
	color: "rgba(235,235,235,1)"
	
done_2 = new TextLayer
	parent: buttonCopy
	x: 151.5
	y: 17
	text: "Back"
	fontSize: 22
	fontFamily: "Helvetica"
	textAlign: "center"
	color: "rgba(235,235,235,1)"

hEader = new Layer
	parent: pictureAndSound
	x: 64
	y: 24
	backgroundColor: "transparent"
	width: 1152
	height: 57

speedChecker = new TextLayer
	parent: hEader
	x: 0
	y: 0
	text: "Speed Checker"
	fontSize: 30
	fontFamily: "Helvetica"
	letterSpacing: 0.0
	textAlign: "left"
	color: "rgba(234,234,234,1)"

fill17 = new Layer
	parent: hEader
	x: 0
	y: 55
	width: 1152
	height: 2

tIMEHERE = new TextLayer
	parent: hEader
	x: 1067
	y: 2
	text: "10:30"
	fontSize: 30
	fontFamily: "Helvetica"
	letterSpacing: 0.0
	textAlign: "right"
	
		

	


Comp_1A = new VideoLayer
	parent: body
	width: 1000	
	height:  1000
	video: "images/Comp%202.mp4"
	backgroundColor: '00050F'
	index: 0
	x: -150
	y: -160




error = new VideoLayer
	parent: body
	width:  1000
	height: 1000
	video: "images/error.mp4"
	backgroundColor: '00050F'
	index: 0
	x: -150
	y: -160
	
fill19_3.onTap (event, layer) ->
	error.visible = true
	Comp_1A.visible = false
	error.player.play()

button_highlight.onTap (event, layer) ->
	error.visible = false
	Comp_1A.visible = true 
	Comp_1A.player.play()
	
