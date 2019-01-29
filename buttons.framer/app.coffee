circle = new Layer	
	borderRadius: 100
	width: 40
	height: 40
	originX: 0.5
	originY: 0.5
	backgroundColor: "rgba(0,166,255,1)"
circle.center()

circleShrink = new Animation circle,
	scale: 0.75
	shadowSpread: 2
	shadowBlur: 5
	options:
		time: 0.170
		curve: Bezier(0.17, -0.07, 0.21, 1)

circleShrink.onAnimationEnd ->
	circle.animate
		scale: 1
		shadowBlur: 0
		shadowSpread: 0
		options:
			time: 0.08
			curve: Bezier(0.79, 0, 0, 1)
			
circle.onTap (event, layer) ->
	circleShrink.start( )

circle2 = new Layer	
	borderRadius: 100
	width: 40
	height: 40
	originX: 0.5
	originY: 0.5
	backgroundColor: "rgba(0,166,255,1)"
circle2.centerX(150)
circle2.centerY()

	
circlecolour = new Animation circle2,
		backgroundColor: "rgba(15,83,145,1)"
		options:
			time: 0.170
			curve: Bezier(0.53, 0, 0.24, 1)

circlecolour.onAnimationEnd ->
	circle2.animate
		backgroundColor: "rgba(0,166,255,1)"
		options:
			time: 0.08
			curve: Bezier(0.465, 0.183, 0.153, 0.946);
			
			
circle2.onTap (event, layer) ->
	circlecolour.start( )
	


circle3 = new Layer	
	borderRadius: 100
	scale: 1
	width: 40
	height: 40
	x: 100	
	y: 100	
	originX: 0.5
	originY: 0.5
	backgroundColor: "rgba(0,166,255,1)"
circle3.centerX(-150)
circle3.centerY()

circle4 = new Layer	
	borderRadius: 100
	scale: 1
	x: 100
	y: 100
	originX: 0.5
	originY: 0.5
	opacity: 0
	backgroundColor: "rgba(5,137,208,0.5)"
	width: 40
	height: 40
circle4.centerX(-150)
circle4.centerY()
circle4animation= new Animation circle4,
	opacity: 0.4
	options:
		time: 0.170
		curve: Bezier(0.17, 0.69, 0.41, 1)
	scale: 1.5
	options:
		time: 0.170
		curve: Bezier(0.17, 0.24, 0.41, 0.5)
		
circle4animation2= new Animation circle4,
	opacity: 0
	options:
		time: 0.170
		curve: Bezier(0.41, 0, 0.41, 1)
	scale: 2
	options:
		time: 0.170
		curve: Bezier(0.17, 0, 0.83, 1)
				
				
circle4animation2.onAnimationEnd ->
	circle4.scale=1
circle4animation.onAnimationEnd ->
	circle4animation2.start()
		
		
			
			


circle4.onTap (event, layer) ->
	circle4animation.start()


circle5 = new Layer	
	borderRadius: 100
	scale: 1
	width: 40
	height: 40	
	originX: 0.5
	originY: 0.5
	backgroundColor: "rgba(0,166,255,1)"
circle5.centerX(300)
circle5.centerY()

circle6 = new Layer	
	borderRadius: 10000
	opacity: 0.3
	backgroundColor: "rgba(255,255,255,1)"
	width: 80
	height: 80	
	scale: 0.01
circle6.centerX(300)
circle6.centerY()


circle6animation= new Animation circle6,
	opacity: 0.5
	options:
		time: 0.380
		curve: Bezier(0.17, 0.17, 0.25, 1)
	scale: 0.5
	options:
		time: 0.180
		curve: Bezier(0.17, 0.12, 0.25, 1)
	
	 		
circle6animation2= new Animation circle6,
	opacity: 0
	options:
		time: 0.32
		curve: Bezier(0.17, 0.17, 0.25, 1)
	scale: 1
	options:
		time: 0.150
		curve: Bezier(0.17, 0.12, 0.25, 1)
				
# 				
circle6animation2.onAnimationEnd ->
	circle6.scale=0.01
circle6animation.onAnimationEnd ->
	circle6animation2.start()
# 		
		
			
			


circle5.onTap (event, layer) ->
	circle6animation.start()