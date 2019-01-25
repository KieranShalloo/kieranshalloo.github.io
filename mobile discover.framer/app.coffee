# # Create layers
# screenA = new Layer
# 	size: Screen.size
# 	backgroundColor: "#00AAFF"
# 
# screenB = new Layer
# 	size: Screen.size
# 	backgroundColor: "#FFCC33"
# 
# # Set up FlowComponent
pixel.states.a =
	opacity: 1.00
pixel2.states.a =
	opacity: 1.00
	
flow = new FlowComponent
flow.showNext(pixel)

# Switch on click
pixel.onClick ->
	flow.showNext(pixel2)

pixel2.onClick ->
	flow.showPrevious(pixel)

