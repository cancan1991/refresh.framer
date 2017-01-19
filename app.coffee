# Import file "scroll"
sketch11 = Framer.Importer.load("imported/scroll@1x")


scroll = ScrollComponent.wrap (sketch11.Group)
scroll.scrollHorizontal = false
scroll.contentInset=
	bottom:10
	top:550
	
scroll. on Events.Scroll, -> 
	if scroll.scrollY <=0 then scroll.scrollY=0

postLayer= new Layer
	width: Screen.width
	height: Screen.height
	image: sketch11.Group_2.image
	y:Screen.height
	
sketch11.First_Group.on Events.Click, ->
	postLayer.animate
		properties:
			y:0
	curve:"spring(400,35,0)"
	
	cancelButton=new Layer
		superLayer: postLayer
		x:0
		y:60
		width:140
		height:80
		backgroundcColor:null
	
	cancelButton.on Events.Click,->
		postLayer.animate
			properties:
				y:Screen.height
			curve:"spring(400,35,0)"
