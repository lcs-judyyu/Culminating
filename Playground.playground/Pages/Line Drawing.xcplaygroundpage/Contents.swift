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

    //moon

    //test the moon part
    turtle.penUp()
    turtle.goToHome()
    //move to starting point
    turtle.forward(steps: 74 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 50 * squareSize)
    turtle.right(by: 25)
    //start
    //one to five
    turtle.penDown()
    turtle.right(by: 160)
    turtle.forward(steps: 20 * squareSize / 3)
    turtle.right(by: 14)
    turtle.forward(steps: 6 * squareSize)
    turtle.right(by: 17)
    turtle.forward(steps: 20 * squareSize / 3)
    turtle.right(by: 7)
    turtle.forward(steps: 20 * squareSize / 3)
    turtle.right(by: 15)
    turtle.forward(steps: 23 * squareSize / 4)
    //six to ten
    turtle.right(by: 11)
    turtle.forward(steps: 15 * squareSize / 2)
    turtle.right(by: 10)
    turtle.forward(steps: 7 * squareSize / 2)
    turtle.right(by: 14)
    turtle.forward(steps: 5 * squareSize )
    turtle.right(by: 7)
    turtle.forward(steps: 19 * squareSize / 3)
    turtle.right(by: 13)
    turtle.forward(steps: 26 * squareSize / 3)
    //eleven to fifteen
    turtle.right(by: 20)
    turtle.forward(steps: 25 * squareSize / 3)
    turtle.right(by: 16)
    turtle.forward(steps: 10 * squareSize / 3)
    turtle.right(by: 10)
    turtle.forward(steps: 5 * squareSize)
    turtle.right(by:8)
    turtle.forward(steps: 7 * squareSize)
    turtle.right(by: 20)
    turtle.forward(steps: 5 * squareSize)
    //sixteen to twenty
    turtle.right(by: 7)
    turtle.forward(steps: 20 * squareSize / 3)
    turtle.right(by: 18)
    turtle.forward(steps: 23 * squareSize / 3)
    turtle.right(by: 12)
    turtle.forward(steps: 20 * squareSize / 3)
    turtle.right(by: 9)
    turtle.forward(steps: 8 * squareSize)
    turtle.right(by: 8)
    turtle.forward(steps: 7 * squareSize)
    //twenty-one to twenty-three
    turtle.right(by: 8)
    turtle.forward(steps: 6 * squareSize)
    turtle.right(by: 5)
    turtle.forward(steps: 6 * squareSize)

    //forehead
    turtle.penDown()
    turtle.right(by: 149)
    turtle.forward(steps: 15 * squareSize / 2)
    turtle.left(by: 6)
    turtle.forward(steps: 15 * squareSize / 2)
    turtle.left(by: 19)
    turtle.forward(steps: 16 * squareSize / 3)
    turtle.left(by: 35)
    turtle.forward(steps: 7 * squareSize)
    //nose
    turtle.right(by: 45)
    turtle.forward(steps: 40 * squareSize / 3)
    turtle.left(by: 55)
    turtle.forward(steps: 3 * squareSize / 3)
    turtle.left(by: 40)
    turtle.forward(steps: 3 * squareSize)
    turtle.left(by: 30)
    turtle.forward(steps: 2 * squareSize)
    //mouth
    turtle.right(by: 47)
    turtle.forward(steps: 3 * squareSize / 2)
    turtle.right(by: 70)
    turtle.forward(steps: 3 * squareSize / 2)
    turtle.left(by: 59)
    turtle.forward(steps: 1 * squareSize / 2)
    turtle.left(by: 41)
    turtle.forward(steps: 2 * squareSize)
    turtle.right(by: 125)
    turtle.forward(steps: 9 * squareSize / 5)
    turtle.left(by: 73)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 22)
    turtle.forward(steps: 3 * squareSize / 2)
    //chin
    turtle.right(by: 48)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 15)
    turtle.forward(steps: 9 * squareSize / 5)
    turtle.left(by: 33)
    turtle.forward(steps: 5 * squareSize / 2)
    turtle.left(by: 50)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 12)
    turtle.forward(steps: 41 * squareSize / 3)
    turtle.left(by: 26)
    turtle.forward(steps: 89 * squareSize / 6)
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
