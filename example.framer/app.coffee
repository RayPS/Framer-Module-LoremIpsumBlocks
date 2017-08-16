{Blocks} = require "LoremIpsumBlocks"

BG = new BackgroundLayer backgroundColor: "white"

# Options:       Default Value
# ----------------------------
# wordCount:     24
# wordSpacing:   12
# letterHeight:  24
# letterWidth:   12
# lineSpacing:   12
# color:         "silver"

headline = new Blocks
	x: 25, y: 25
	width: 300
	color: "#404040"
	wordCount: 10
	
paragraphA = new Blocks
	x: 25, y: headline.maxY + 30
	width: 300
	wordCount: 40

placeHolder = new Layer
	x: 25, y: paragraphA.maxY + 30
	width: 320, height: 50
	backgroundColor: "#F1F1F1"

paragraphB = new Blocks
	x: 25, y: placeHolder.maxY + 30
	width: 150
	wordCount: 20
	
paragraphC = new Blocks
	x: paragraphB.maxX + 30, y: placeHolder.maxY + 30
	width: 150
	wordCount: 20