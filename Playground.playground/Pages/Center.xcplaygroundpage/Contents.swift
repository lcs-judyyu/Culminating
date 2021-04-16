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

// Move the turtlt to middle bottom
//turtle.forward(steps: canvas.width / 2)
//turtle.drawSelf()
//
//turn left
//turtle.left(by: 90)
//
//move up
//turtle.forward(steps: canvas.height / 2)
//turtle.drawSelf()
//
//turn right
//turtle.right(by: 90)
//turtle.drawSelf()

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

turtleToCenter()
turtle.currentHeading()
turtle.drawSelf()

//facing up
turtle.left(by: 90)
turtle.currentHeading()
turtle.drawSelf()

//facing left
turtle.left(by: 90)
turtle.currentHeading()
turtle.drawSelf()

//facing down
turtle.left(by: 90)
turtle.currentHeading()
turtle.drawSelf()
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
