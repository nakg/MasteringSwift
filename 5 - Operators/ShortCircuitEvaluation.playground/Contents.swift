import UIKit

/*:
 # Short-circuit Evaluation
 */

//false &&
//true ||

var a = 1
var b = 1

func updateLeft() -> Bool {
	a += 1
	return true
}

func updateRight() -> Bool {
	b += 1
	return true
}

let resultA = updateLeft()
let resultB = updateRight()


if resultA || resultB {
	
}

a
b
