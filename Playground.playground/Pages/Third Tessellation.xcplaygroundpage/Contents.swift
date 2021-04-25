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
//canvas.drawAxes(withScale: true, by: 25, color: Color.blue)

//set a constant
let squareSize = 25

//FUNCTIONS Section:
//function to draw one figure
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

//function to draw three figures (first pattern)
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

//function to draw seven figures (second pattern)
func drawSevenFigures() {
    for _ in stride(from: 1, through: 2, by: 1) {
        drawThreeFigures()
    }
    drawOneFigure()
}

//function to draw ten figures (third)
func drawTenFigures() {
    for _ in stride(from: 1, through: 3, by: 1) {
        drawThreeFigures()
    }
    drawOneFigure()
}

//function to draw eight figures (fourth pattern)
func drawEightFigures() {
    drawSevenFigures()
    turtle.penUp()
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.right(by: 90)
    turtle.penDown()
    drawOneFigure()
}

//function to draw four figures (fifth pattern)
func drawFourFigures() {
    drawThreeFigures()
    drawOneFigure()
}


//function to draw first two rows of scarlet figures
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

//function to move to starting point of scarlet
func moveToStartDrawingScarlet() {
    turtle.forward(steps: preferredWidth - 4 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
}

//function to move to starting point of light teal
func moveToStartDrawingLightTeal() {
    turtle.right(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
}

//function to draw two rows of light teal figures
func drawThirdAndFourthRowsOfFigures() {
    drawTenFigures()
    turtle.penUp()
    turtle.goToHome()
    turtle.left(by: 90)
    turtle.forward(steps: 6 * squareSize)
    turtle.right(by: 90)
    turtle.penDown()
    drawEightFigures()
}

//function to draw a diagonal line (fifth pattern)
func drawOneLine() {
    turtle.penDown()
    turtle.left(by: 135)
    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(2.0).squareRoot())))
    turtle.left(by: 180)
    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(2.0).squareRoot())))
    turtle.left(by: 45)
    turtle.penUp()
}

//function to draw three diagonal lines (first pattern)
func drawThreeLines() {
    for _ in stride(from: 1, through: 3, by: 1) {
        drawOneLine()
        turtle.penUp()
        turtle.forward(steps: 2 * squareSize)
        turtle.left(by: 90)
        turtle.forward(steps: 2 * squareSize)
        turtle.right(by: 90)
        turtle.penDown()
    }
}

//function to draw seven diagonal lines (second pattern)
func drawSevenLines() {
    for _ in stride(from: 1, through: 2, by: 1) {
        drawThreeLines()
    }
    drawOneLine()
}

//function to draw nine diagonal lines (third pattern)
func drawNineLines() {
    for _ in stride(from: 1, through: 3, by: 1) {
        drawThreeLines()
    }
}

//function to draw five diagonal lines (fourth pattern)
func drawFiveLines() {
    for _ in stride(from: 1, through: 5, by: 1) {
        drawOneLine()
        turtle.penUp()
        turtle.forward(steps: 2 * squareSize)
        turtle.left(by: 90)
        turtle.forward(steps: 2 * squareSize)
        turtle.right(by: 90)
        turtle.penDown()
    }
}


//SETTING Section:
//Draw a boundary for the tesselation
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
                       alpha: 80)

let lightTeal = Color.init(hue: 138,
                       saturation: 12,
                       brightness: 75,
                       alpha: 100)


//DRAW TESSELLATION Section:
//NOTE: the tessellation will go beyond the boundary because of the irreular shape of the figures
//background
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = lightOlive //NOTE: plot the tessellation on a light olive paper if possible, or use beige or white papers instead
canvas.drawRectangle(at: Point(x: 0, y: 0), width: preferredWidth, height: preferredHeight)

//start at bottom left corner and draw a test line
//NOTE: use a scarlet pen, or a red pen instead
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 35)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.penDown()
turtle.setPenColor(to: scarlet)
turtle.setPenSize(to: 3)
turtle.forward(steps: 12 * squareSize)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()

//move to starting point and draw two rows of scarlet figures
moveToStartDrawingScarlet()

turtle.setPenColor(to: scarlet)
turtle.setPenSize(to: 3)
drawFirstTwoRowsOfFigures()


//skip two rows and one row of scarlet figures
//go back to the origin and move up to start
turtle.penUp()
turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 14 * squareSize)
turtle.right(by: 90)
turtle.penDown()
drawFourFigures()

//go back to the origin and move forward to draw three diagonal lines (first pattern)
turtle.penUp()
turtle.goToHome()
turtle.forward(steps: 16 * squareSize)
drawThreeLines()

//go back to the origin and move up to draw five diagonal lines (fourth pattern)
turtle.penUp()
turtle.goToHome()
turtle.forward(steps: 2 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 10 * squareSize)
turtle.right(by: 90)
turtle.penDown()
drawFiveLines()

//move left to draw one diagonal line (fifth fattern)
turtle.penUp()
turtle.left(by: 180)
turtle.forward(steps: 10 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 2 * squareSize)
turtle.left(by: 90)
turtle.penDown()
drawOneLine()

//change pen
//start at bottom left corner and draw a test line
//NOTE: use a light teal pen, or a teal or blue pen instead
turtle.penUp()
turtle.goToHome()

// Draw a test line outside the tesselation boundary
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: preferredHeight - 65)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.penDown()
turtle.setPenColor(to: lightTeal)
turtle.setPenSize(to: 3)
turtle.forward(steps: 12 * squareSize)
turtle.penUp()
//NOTE: adjust the position of the pen if the test line does not show on paper

//move back to home
turtle.goToHome()

//move to start to draw light teal figures
moveToStartDrawingLightTeal()

//draw two rows of light teal figures
drawThirdAndFourthRowsOfFigures()

//go bak to origin and move right to draw seven lines (second pattern)
turtle.penUp()
turtle.goToHome()
turtle.forward(steps: 8 * squareSize)
drawSevenLines()

//go back to origin and move up and right to draw nine lines (third pattern)
turtle.penUp()
turtle.goToHome()
turtle.forward(steps: 2 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 2 * squareSize)
turtle.right(by: 90)
drawNineLines()
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
