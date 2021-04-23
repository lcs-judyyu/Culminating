//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
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
canvas.drawAxes(withScale: true, by: 25, color: Color.blue)

//set a constant
let squareSize = 25

//draw one figure
func drawOneFigure() {
    turtle.penDown()
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

//draw three figures (first pattern)
func drawThreeFigures() {
    for _ in stride(from: 1, through: 3, by: 1) {
        drawOneFigure()
        turtle.penUp()
        turtle.forward(steps: 2 * squareSize)
        turtle.left(by: 90)
        turtle.forward(steps: 2 * squareSize)
        turtle.right(by: 90)
        turtle.penDown()
    }
}

//draw seven figures (second pattern)
func drawSevenFigures() {
    for _ in stride(from: 1, through: 2, by: 1) {
        drawThreeFigures()
    }
    drawOneFigure()
}

//draw nine figures (third pattern)
func drawNineFigures() {
    for _ in stride(from: 1, through: 3, by: 1) {
        drawThreeFigures()
    }
}


//draw two rows and skip twp rows
func drawFirstTwoRowsOfFigures() {
    drawThreeFigures()
    turtle.penUp()
    turtle.goToHome()
    turtle.forward(steps: 8 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
    turtle.penDown()
    drawSevenFigures()
}

//move to starting point
func moveToStartDrawing() {
    turtle.forward(steps: preferredWidth - 4 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
}

// Draw a boundary for the tesselation
canvas.defaultBorderWidth = 3
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = Color(hue: 0, saturation: 25, brightness: 0, alpha: 25)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)

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
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = lightOlive //NOTE: plot the tessellation on a light olive paper if possible, or use beige or white papers instead
//canvas.drawRectangle(at: Point(x: 0, y: 0), width: preferredWidth, height: preferredHeight)

//start at bottom left corner and draw a test line
//Note: use a scarlet pen, or a red pen instead
//Note: adjust the position of the pen if the test line does not show on paper
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 20)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.penDown()
turtle.setPenColor(to: scarlet)
turtle.setPenSize(to: 2)
turtle.forward(steps: 12 * squareSize)
turtle.penUp()

//move back to home
turtle.goToHome()

//move to starting point and draw two rows of scarlet figures
moveToStartDrawing()

turtle.setPenColor(to: scarlet)
turtle.setPenSize(to: 3)
drawFirstTwoRowsOfFigures()

//skip two rows and draw
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
