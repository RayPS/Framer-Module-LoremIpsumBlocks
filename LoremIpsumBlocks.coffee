# LoremIpsumBlocks Module
# Ray
# 2015-10-22 17:53:53

range = [1..23]
chances = [
    0.027, 0.679, 4.730, 7.151, 10.804,
    13.674, 14.751, 13.616, 11.356, 8.679,
    5.913, 3.792, 2.329, 1.232, 1.268
]   # http://norvig.com/mayzner.html
    
skewRadomNumber = (range, chances) ->
    finalArray = []
    for key, value of range
        for i in [1..chances[key] * 100]
            finalArray.push value
    return Utils.randomChoice finalArray

class exports.Blocks extends Layer
    constructor: (options={}) ->
        options.width ?= Screen.width - 20*2
        options.backgroundColor ?= "transparent"
        super options
        
        options.wordCount ?= 24
        options.wordSpacing ?= 6
        options.letterHeight ?= 12
        options.letterWidth ?= 6
        options.lineSpacing ?= 6
        options.color ?= "silver"

        linesCreated = 0
        lastWordRight = 0
    
        for i in [0...options.wordCount]
            r = skewRadomNumber(range, chances) * options.letterWidth

            lineBreaking = lastWordRight + r > options.width
            if lineBreaking
                lastWordRight = 0
                linesCreated++
                
            new Layer
                superLayer: @
                height: options.letterHeight
                width: r
                x: lastWordRight
                y: linesCreated * (options.lineSpacing + options.letterHeight)
                backgroundColor: options.color
                name: "word_#{i}"
#               html: i
            lastWordWidth = @subLayersByName("word_#{i}")[0].width + options.wordSpacing
            lastWordRight += lastWordWidth
        @height = linesCreated * (options.letterHeight + options.lineSpacing) + options.letterHeight