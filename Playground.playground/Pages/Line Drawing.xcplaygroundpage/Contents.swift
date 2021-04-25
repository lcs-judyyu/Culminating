//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 200
let preferredHeight = 250
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
let squareSize = 2

//show axis
canvas.drawAxes(withScale: true, by: 10, color: Color.blue)




//SETTING Section:
//Draw a boundary for the tesselation
canvas.defaultBorderWidth = 3
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = Color(hue: 0, saturation: 25, brightness: 0, alpha: 25)
canvas.drawRectangle(at: Point(x: 0, y: 0), width:preferredWidth, height: preferredWidth)
//set colors
let yellow = Color.init(hue: 51,
                       saturation: 64,
                       brightness: 98,
                       alpha: 100)

let pink = Color.init(hue: 353,
                       saturation: 22,
                       brightness: 100,
                       alpha: 100)

//DRAWING Section:
//start at bottom left corner and draw a test line
//NOTE: use a yellow parker
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 15)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.penDown()
turtle.setPenColor(to: yellow)
turtle.setPenSize(to: 3)
turtle.forward(steps: 150)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()


//return to bottom left corner and draw a test line
//NOTE: use a pink parker
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 30)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.penDown()
turtle.setPenColor(to: pink)
turtle.setPenSize(to: 3)
turtle.forward(steps: 150)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()
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
