## LoremIpsumBlocks Module for FramerJS

<img src="readme.png" width="100%">

#### Use:
Place `LoremIpsumBlocks.coffee` to the folder named "module" in your project.


``` coffeescript
{Blocks} = require "LoremIpsumBlocks"

# ...

paragraphA = new Blocks
	x: 50, y: 50
	width: 600
	wordCount: 40
```

#### Options:

``` coffeescript
# Options:       Default Value
# ----------------------------
# wordCount:     24
# wordSpacing:   12
# letterHeight:  24
# letterWidth:   12
# lineSpacing:   12
# color:         "silver"
```