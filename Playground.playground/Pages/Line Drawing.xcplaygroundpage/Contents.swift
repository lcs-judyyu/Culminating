//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
let preferredHeight = 550
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
canvas.drawAxes(withScale: true, by: 20, color: Color.blue)

//FUNCTIONS Section:
//function to draw one straight line
func drawOneLine() {
    turtle.penDown()
    turtle.left(by: 90)
    turtle.forward(steps: 38 * squareSize)
    turtle.penUp()
    turtle.left(by: 180)
    turtle.forward(steps: 38 * squareSize)
    turtle.left(by: 90)
}

//function to draw a square
func drawOneSquare() {
    for _ in stride(from: 1, through: 38 * squareSize, by: 1) {
        drawOneLine()
        turtle.penUp()
        turtle.forward(steps: 1)
        turtle.penDown()
    }
}

//function to move to position for drawing a yellow square
func moveToDrawYellowSquare() {
    turtle.forward(steps: 8 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 43 * squareSize)
    turtle.right(by: 109)
}

//function to move to position for drawing a pink square
func moveToDrawPinkSquare() {
    turtle.forward(steps: 58 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 7 * squareSize)
    turtle.right(by: 62)
}

//function to draw the figure
func drawFigure() {
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
    
}

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
                       alpha: 50)

let pink = Color.init(hue: 353,
                       saturation: 22,
                       brightness: 100,
                       alpha: 50)

//DRAWING Section:
canvas.highPerformance = true
//start at bottom left corner and draw a test line
//NOTE: use a yellow parker
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 15)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.penDown()
turtle.setPenColor(to: yellow)
turtle.setPenSize(to: 3)
turtle.forward(steps: 30 * squareSize)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()

//move to position and draw a yellow square
moveToDrawYellowSquare()
turtle.setPenColor(to: yellow)
drawOneSquare()

//return to bottom left corner and draw a test line
//NOTE: use a pink parker
turtle.penUp()
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 30)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.penDown()
turtle.setPenColor(to: pink)
turtle.setPenSize(to: 3)
turtle.forward(steps: 30 * squareSize)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()

//move to position and draw a pink square
moveToDrawPinkSquare()
turtle.setPenColor(to: pink)
drawOneSquare()

//return to bottom left corner and draw a test line
//NOTE: use a black fine pen
turtle.penUp()
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 20)
turtle.right(by: 90)
turtle.forward(steps: 250)
turtle.penDown()
turtle.setPenColor(to: Color.black)
turtle.setPenSize(to: 1)
turtle.forward(steps: 30 * squareSize)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()

canvas.highPerformance = false

//draw the figure
drawFigure()
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
