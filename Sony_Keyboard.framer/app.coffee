fe = require 'FocusEngine'
#background 



	
video = new VideoLayer
	width: 1280
	height: 720
	video: "https://archive.org/download/BigBuckBunny_328/BigBuckBunny_512kb.mp4"

video.player.play()
video.player.muted = true;


BgImage = new Layer
	width: 1280
	height: 720
	image: "images/09_2.png"

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
buttonW = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonX = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonY = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonZ = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonLeft = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient2
	custom: 
		darkbutton: true
buttonRight = new Layer
	parent: buttons
	width: 76
	x: 71+87+87+87+87+87+87+87+87+87
	y: 425
	height: 40
	borderRadius: 3
	gradient: buttonGradient2
	custom: 
		darkbutton: true
buttonComma = new Layer
	parent: buttons
	width: 76
	x: 71
	y: 478
	height: 40
	borderRadius: 3
	gradient: buttonGradient

buttonFullStop = new Layer
	parent: buttons
	width: 76
	x: 593
	y: 478
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonQuestion = new Layer
	parent: buttons
	width: 76
	x: 593+87
	y: 478
	height: 40
	borderRadius: 3
	gradient: buttonGradient
buttonSearch = new Layer
	parent: buttons
	width: 164
	x: 593+87+87
	y: 478
	height: 40
	borderRadius: 3
	gradient: buttonGradient2
	custom: 
		darkbutton: true
buttonDelText = new TextLayer
# 	parent: buttons
	text: 'Del'
	textAlign: 'center'
	width: 76
	height: 40	
	fontSize: 24
	color: "ebebeb"
	fontFamily: 'helvetica'	
	x: 854
	y: 378
buttonSearchText = new TextLayer
# 	parent: buttons
	text: 'Search'
	textAlign: 'center'
	width: 164
	height: 40	
	fontSize: 24
	color: "ebebeb"
	fontFamily: 'helvetica'	
	x: 767
	y: 484
buttonSpace = new Layer
	parent: buttons
	width: 425
	x: 158
	y: 478
	height: 40
	borderRadius: 3
	gradient: buttonGradient	
buttonSpaceText = new TextLayer
# 	parent: buttons
	text: 'Space'
	textAlign: 'center'
	width: 425
	height: 40	
	fontSize: 24
	color: "ebebeb"
	fontFamily: 'helvetica'	
	x: 158
	y: 482
#icons
		
IconSymbol = new Layer
	width: 39
	height: 19
	image: "images/_@%23.png"
	x: 88
	y: 435

IconLeft = new Layer
	width: 21
	height: 15
	image: "images/Shape%201%20copy%204.png"
	x: 792
	y: 437

IconRight = new Layer
	width: 21
	height: 15
	image: "images/Shape%201%20copy%205.png" 
	x: 883
	y: 437
#arrays 
focus = []
for child,i in buttons.children
	focus.push(child)

alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s",".",".","t","u","v","w","x","y","z","z","z", ",",  ".", "?", " ", " "]
for child,i in buttons.children
	if child.custom? ==false
		A = new TextLayer
			text: alphabet[i]
			parent: child 
			y: 6
			x: 30
			textAlign: 'center'			
			height: 40	
			fontSize: 24
			color: "ebebeb"
			fontFamily: 'helvetica'	
			textTransform: "UpperCase"

# FocuEngine
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
