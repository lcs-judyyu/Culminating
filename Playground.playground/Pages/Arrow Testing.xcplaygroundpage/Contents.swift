//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
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
//test another arrow

//move atarting point to the center
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

turtleToCenter()

//set a constant
let squareSize = 10

//create a function to draw arrow
func drawAnotherArrow() {
    turtle.penDown()
    turtle.currentHeading()
    turtle.forward(steps: 5 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: round(180 - (atan(3 / 2))))
    turtle.drawSelf()
    turtle.forward(steps: Int(round(Double(1 * squareSize) * Double(13.0).squareRoot())))
    // reaches the tip of the arrow
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(Double(1 * squareSize) * Double(13.0).squareRoot())))
    turtle.left(by: 180 - atan(3/2))
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 5 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
    turtle.drawSelf()
}

drawAnotherArrow()
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
