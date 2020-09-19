//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # Inheritance
 ![inheritance](inheritance.png)
 */
class Figure {
	var name = "Unknown"
	
	init(name: String) {
		self.name = name
	}
	
	func draw() {
		print("draw \(name)")
	}
}

class Circle: Figure {
	var radius = 0.0 // 직접 속성 선언.
}

// Access.
let c = Circle(name: "Circle") // Circle class에는 생성자가 구현되어있지 않지만, Figure에서 상속받았다.
c.radius // Circle Class에 선언되어있는 property.
c.name // Circle.
c.draw()




/*:
 ## final class
 ![final class](final-class.png)
 */
// - 상속을 막고 싶으면, final class로 선언한다. 자기는 상속할 수 있지만, 다른애들이 상속 못받게 한다.
final class Rectangle: Figure {
	var width = 0.0
	var height = 0.0
}

//class Square: Rectangle {
//	
//}
// -> 에러.







