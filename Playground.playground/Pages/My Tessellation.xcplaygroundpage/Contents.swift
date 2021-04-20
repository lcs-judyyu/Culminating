//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 400
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
//show axis
//canvas.drawAxes(withScale: true, by: 20, color: Color.blue)

//set colors
let black = Color.black
let lightgrey = Color.init(hue: 0,
                       saturation: 0,
                       brightness: 70,
                       alpha: 100)
let darkgrey = Color.init(hue: 0,
                       saturation: 0,
                       brightness: 30,
                       alpha: 100)
let white = Color.white


//color
turtle.setPenColor(to: darkgrey)
turtle.setPenSize(to: 2)

//set a constant
let squareSize = 20

//function to move the turtle from bottom left to the center
func turtleToCenter() {
    //move to bottom edge
    turtle.penUp()
    turtle.forward(steps: canvas.width / 2)
    turtle.currentHeading()
    
    //move to the center
    turtle.left(by: 90)
    turtle.currentHeading()
    turtle.penUp()
    turtle.forward(steps: canvas.height / 2)
    
    //turn right
    turtle.right(by: 90)
}

//move turtle to (0, -2)
turtle.right(by: 90)
turtle.forward(steps: 2 * squareSize)
turtle.left(by: 90)

// function to move forward half a step and turn right
func moveForwardHalfTurnRight() {
    turtle.penDown()
    turtle.forward(steps: 1 * squareSize / 2)
    turtle.right(by: 90)
}

// function to draw squares
func drawSquares() {
    turtle.penDown()
    turtle.forward(steps: 2 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 3 * squareSize / 2)
    turtle.left(by: 90)
    moveForwardHalfTurnRight()
    moveForwardHalfTurnRight()
    turtle.forward(steps: 5 * squareSize / 2)
    turtle.right(by: 90)
    turtle.forward(steps: 2 * squareSize)
}

func fillColorInOneSquare() {
    turtle.beginFill()
    drawSquares()
    turtle.endFill()
}

func fillColorinSquares() {
    turtle.setFillColor(to: white)
    fillColorInOneSquare()
    turtle.setFillColor(to: white)
    fillColorInOneSquare()
    turtle.setFillColor(to: black)
    fillColorInOneSquare()
    turtle.setFillColor(to: black)
    fillColorInOneSquare()
}

//column
for _ in stride(from: 1, through: 7, by: 1) {
//row
    for _ in stride(from: 1, through: 7, by: 1) {
    
//four squares as one shape
    fillColorinSquares()
    turtle.penUp()
    turtle.forward(steps: 4 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 90)
    turtle.penDown()
}
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 29 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 3 * squareSize)
    turtle.left(by: 90)
    turtle.penDown()
}

turtle.copySVGToClipboard()
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
