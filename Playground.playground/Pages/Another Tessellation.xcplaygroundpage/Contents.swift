//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 280 //560 for squareSize 40
let preferredHeight = 280 //560 for squareSize 40
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//set a constant
let squareSize = 20

//set color
let grey = Color.init(hue: 0,
                       saturation: 0,
                       brightness: 20,
                       alpha: 100)

//show axis
//canvas.drawAxes(withScale: true, by: 20, color: Color.blue)

//function to draw one vertical line of one squareSize
func drawOneVerticalLine() {
    turtle.penDown()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 180)
    turtle.penUp()
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
}

//black squares
func drawOneSquare() {
    turtle.setPenColor(to: Color.black)
    turtle.setPenSize(to: 1)
    for _ in stride(from: 1, through: squareSize, by: 1) {
        drawOneVerticalLine()
        turtle.penUp()
        turtle.forward(steps: 1)
        turtle.penDown()
    }
}

//one row of squares
func drawOneRowOfSquares() {
    for _ in stride(from: 1, through: 7, by: 1) {
        drawOneSquare()
        turtle.penUp()
        turtle.forward(steps: squareSize)
    }
}

//first and second pattern of squares (space 3, space 7)
func drawFirstAndSecondPatternOfSquares() {
    turtle.penUp()
    turtle.forward(steps: 1 * squareSize / 3)
    drawOneRowOfSquares()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth + 1 * squareSize / 3)
    turtle.left(by: 180)
    turtle.forward(steps: 2 * squareSize / 3)
    drawOneRowOfSquares()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth + 2 * squareSize / 3)
    turtle.left(by: 180)
}

//third and fourth pattern of squares (space 3, space 0)
func drawThirdAndFourthPatternOfSquares() {
    turtle.penUp()
    turtle.forward(steps: 1 * squareSize / 3)
    drawOneRowOfSquares()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth + 1 * squareSize / 3)
    turtle.left(by: 180)
    drawOneRowOfSquares()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth)
    turtle.left(by: 180)
}

//fill lines in the canvas
func drawSquare() {
for _ in stride(from: 1, through: 3, by: 1) {
    drawFirstAndSecondPatternOfSquares()
    drawThirdAndFourthPatternOfSquares()
}
    drawFirstAndSecondPatternOfSquares()
}


//grey horizontal lines
func drawHorizontalLines() {
    turtle.penDown()
    turtle.setPenColor(to: grey)
    turtle.setPenSize(to: 1)
    turtle.forward(steps: 14 * squareSize)
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 14 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 90)
}

//grey vertical lines
//one row of grey verticle lines
func drawOneRowVerticalLines() {
for _ in stride(from: 1, through: 14, by: 1) {
    turtle.setPenColor(to: grey)
    turtle.setPenSize(to: 1)
    drawOneVerticalLine()
    turtle.penUp()
    turtle.forward(steps: 1 * squareSize)
    turtle.penDown()
    }
}

//first and second pattern of lines (space 3, space 7)
func drawFirstAndSecondPatternOfLines() {
    turtle.penUp()
    turtle.forward(steps: 1 * squareSize / 3)
    drawOneRowVerticalLines()
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth + 1 * squareSize / 3)
    turtle.left(by: 180)
    turtle.forward(steps: 2 * squareSize / 3)
    turtle.penDown()
    drawOneRowVerticalLines()
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth + 2 * squareSize / 3)
    turtle.left(by: 180)
    turtle.penDown()
}

//third and fourth pattern of lines (space 3, space 0)
func drawThirdAndFourthPatternOfLines() {
    turtle.penUp()
    turtle.forward(steps: 1 * squareSize / 3)
    drawOneRowVerticalLines()
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth + 1 * squareSize / 3)
    turtle.left(by: 180)
    turtle.penDown()
    drawOneRowVerticalLines()
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: preferredWidth)
    turtle.left(by: 180)
}

//fill lines in the canvas
func drawVerticalLines() {
for _ in stride(from: 1, through: 3, by: 1) {
    drawFirstAndSecondPatternOfLines()
    drawThirdAndFourthPatternOfLines()
}
    drawFirstAndSecondPatternOfLines()
}

//run all functions
//squares
drawSquare()

//return to bottom left corner
turtle.goToHome()

//grey horizontal lines
for _ in stride(from: 1, through: 15, by: 1) {
    drawHorizontalLines()
}

//return to bottom left corner
turtle.goToHome()

//grey vertical lines beside each square
drawVerticalLines()

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
