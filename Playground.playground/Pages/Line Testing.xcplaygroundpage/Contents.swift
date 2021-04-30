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
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: .High)

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
//turtle.right(by: 13)
//turtle.forward(steps: 25 * squareSize / 3)


//forehead
turtle.penDown()
turtle.right(by: 143)
turtle.forward(steps: 15 * squareSize)
turtle.left(by: 19)
turtle.forward(steps: 16 * squareSize / 3)
turtle.left(by: 35)
turtle.forward(steps: 8 * squareSize)

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
