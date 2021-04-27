//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
let preferredHeight = 500
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
let squareSize = 5 //preferredWidth / 100

//show axis
canvas.drawAxes(withScale: true, by: 10, color: Color.blue)


//move to starting position
turtle.penUp()
turtle.forward(steps: 52 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 86 * squareSize)
//start drawing
//forehead
turtle.penDown()
turtle.left(by: 131)
turtle.forward(steps: 15 * squareSize / 2)
turtle.left(by: 8)
turtle.forward(steps: 10 * squareSize)
turtle.left(by: 3)
turtle.forward(steps: 16 * squareSize / 5)

turtle.left(by: 3)
turtle.forward(steps: 10 * squareSize / 3)
turtle.left(by: 44)
turtle.forward(steps: 10 * squareSize / 3)
turtle.left(by: 16)
turtle.forward(steps: 47 * squareSize / 10)

turtle.left(by: 25)
turtle.forward(steps: 42 * squareSize / 10)
turtle.right(by: 25)
turtle.forward(steps: 3 * squareSize / 2)

//nose
turtle.right(by: 50)
turtle.forward(steps: 66 * squareSize / 5)
//mouth
//chin
//moon


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
