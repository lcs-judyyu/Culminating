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
//show axis
canvas.drawAxes(withScale: true, by: 20, color: Color.blue)

//function to move the turtle from bottom left to the center (just for testing)
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

//move to center

//set a constant
let squareSize = 20

//draw one figure
func drawOneFigure() {
    turtle.left(by: 135)
    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(2.0).squareRoot())))
    turtle.right(by: 135)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.right(by: 135)
    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(2.0).squareRoot())))
    //turn to draw the "tail" part
    turtle.right(by: 90)
    turtle.forward(steps: Int(round(Double(1 * squareSize) * Double(2.0).squareRoot())))
    turtle.left(by: 135)
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 45)
    turtle.forward(steps: Int(round(Double(1 * squareSize) * Double(2.0).squareRoot())))
    turtle.right(by: 135)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * squareSize)
    //turn to face right
    turtle.left(by: 180)
}
//set colors
let scarlet = Color.init(hue: 7,
                       saturation: 64,
                       brightness: 72,
                       alpha: 100)

let lightOlive = Color.init(hue: 63,
                       saturation: 10,
                       brightness: 91,
                       alpha: 100)

let lightTeal = Color.init(hue: 138,
                       saturation: 12,
                       brightness: 75,
                       alpha: 100)

//background
canvas.fillColor = lightTeal //plot the tessellation on a light teal paper if possible, or use beige or white papers instead
canvas.drawRectangle(at: Point(x: 0, y: 0), width: preferredWidth, height: preferredHeight)



drawOneFigure()
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
