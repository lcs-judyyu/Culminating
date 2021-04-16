//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 480
let preferredHeight = 480
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
canvas.drawAxes(withScale: true, by: 10, color: Color.blue)

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

//set a constant
let squareSize = 10

//move up 3 / 2 squareSize
turtle.left(by: 90)
turtle.forward(steps: 3 * squareSize / 2)
turtle.right(by: 90)

// draw arrow

//write a function
func drawArrow() {
    turtle.penDown()
    turtle.currentHeading()
    turtle.forward(steps: 5 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 3 * squareSize / 2)
    turtle.left(by: 135)
    turtle.forward(steps: Int(round(Double(3 * squareSize) * Double(2.0).squareRoot())))
    // reaches the tip of the arrow
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(Double(3 * squareSize) * Double(2.0).squareRoot())))
    turtle.left(by: 135)
    turtle.forward(steps: 3 * squareSize / 2)
    turtle.right(by: 90)
    turtle.forward(steps: 5 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 3 * squareSize)
    turtle.left(by: 90)
    //turtle.drawSelf()
}

for _ in stride(from: 0, to: canvas.width / 6 / squareSize, by: 1) {
    for _ in stride(from: 0, to: canvas.height / 8 / squareSize, by: 1) {
        drawArrow()
        turtle.penUp()
        turtle.forward(steps: 8 * squareSize)
    }
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 13 * squareSize / 2)
    turtle.left(by: 90)
    turtle.forward(steps: canvas.width)
    turtle.left(by: 180)

}
turtle.drawSelf()

canvas.copyToClipboard()
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
