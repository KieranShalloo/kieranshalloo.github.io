k = require "Keyboard"
background = new Layer
	width: 1440
	height: 900
	image: "images/background.png"

i = 0
screens = [ProblemStatment1, ProblemStatment2, ProblemStatment3,ProblemStatment4, ProblemStatment5, DesignSolution1, DesignSolution2, DesignSolution4, DesignSolution5, FinalDesigns, FinalDesigns2, FinalDesigns3, UserTesting3, UserTesting, UserTesting2,Backgroundimages, Assets, ISPskin, Results]
# Set up FlowComponent
flow = new FlowComponent
flow.showNext(screens[i])


nextScreen = () ->
	if i < screens.length-1
		i++
		flow.showNext(screens[i])
previousScreen = () ->
	if i > 0
		i--
		flow.showPrevious(screens[i])

# Switch on click
k.onKey(k.right, nextScreen, 0.1)
k.onKey(k.left, previousScreen, 0.1)# Variables
pageCount = 8
gutter = 60
	


