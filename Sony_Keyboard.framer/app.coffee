fe = require 'FocusEngine'
#background 
# Import file "09_2"


	
video = new VideoLayer
	width: 1280
	height: 720
	video: "https://archive.org/download/BigBuckBunny_328/BigBuckBunny_512kb.mp4"

video.player.play()
video.player.muted = true;

psd = Framer.Importer.load("imported/09_2@1x", scale: 1)
#gradients
highlightGradient = new Gradient
	start: "#087ba0"
	end: "#3bb0ed"

buttonGradient = new Gradient
	start: '222224'
	end: '37393c'
	
buttonGradient2 = new Gradient
	start: '0a0a0b'
	end: '222325'
#parents 
highlight = new Layer	
	backgroundColor: 'transparent'

buttons = new Layer	
	backgroundColor: 'transparent'
#highlight 	
highlightbox = new Layer
	parent: highlight
	width: 76
	x: 71
	y: 319
	height: 40
	borderRadius: 3
	gradient: highlightGradient
	
HighlightA = new TextLayer
	text: 'A'
	font: 'fsme'
	x: 102
	y: 324
	fontSize: 24
	color: "ebebeb"
	
# buttons# 	
buttonA = new Layer
	parent: buttons
	width: 76
	x: 71
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonB = new Layer
	parent: buttons
	width: 76
	x: 71+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonC = new Layer
	parent: buttons
	width: 76
	x: 71+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonD = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonE = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonF = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonG = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonH = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonI = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonJ = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87+87+87
	y: 319
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonK = new Layer
	parent: buttons
	width: 76
	x: 71
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonL = new Layer
	parent: buttons
	width: 76
	x: 71+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonM = new Layer
	parent: buttons
	width: 76
	x: 71+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonN = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonO = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonP = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonQ = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonR = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonS = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonDel = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87+87+87
	y: 372
	height: 40
	borderRadius: 3
	gradient: buttonGradient2
	custom: 
		darkbutton: true
buttonSymbol = new Layer
	parent: buttons
	width: 76
	x: 71
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient2
	custom: 
		darkbutton: true
buttonT = new Layer
	parent: buttons
	width: 76
	x: 71+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonU = new Layer
	parent: buttons
	width: 76
	x: 71+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonV = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonV = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient


focus = []
for child,i in buttons.children
	focus.push(child)

fe.initialize(focus)
for child, i in focus
	child.onFocus ->
		this.gradient = highlightGradient
	child.onUnfocus ->
		if this.custom? 
			this.gradient = buttonGradient2
		else this.gradient = buttonGradient
fe.placeFocus(buttonA)
document.addEventListener "keydown", (event) ->
	keyCode = event.which
	switch keyCode
		when 13 then fe.changeFocus("select")
		when 37 then fe.changeFocus("left")
		when 38 then fe.changeFocus("up")
		when 39 then fe.changeFocus("right")
		when 40 then fe.changeFocus("down")
		else null
