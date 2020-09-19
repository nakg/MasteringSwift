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
# Initializer Delegation

## Value Type
*/

// init은 모두 두속성을 초기화한다. -> 초기화 규칙이 바뀐다면 모든 init을 수정해야한다. 모든 속성을 초기화하는 하나의 init을 구현하고, 다른 init이 이걸 호출하도록 구현해야한다.
struct Size {
	var width: Double
	var height: Double
	
	init(w: Double, h: Double) {
		width = w
		height = h
	}
	
	init(value: Double) {
		//      width = value
		//      height = value
		self.init(w: value, h: value) // 다른 init을 호출하는걸 initializer delegation이라고 한다. 자신의 역할을 첫번째 init에게 위임한다.
	}
}


/*:
## Class
*/
class Figure {
	let name: String
	
	// designated. 모든 속성 초기화.
	init(name: String) {
		self.name = name
	}
	
	convenience init() {
		self.init(name: "unknown") // delegate accross.
	}
}

class Rectangle: Figure {
	var width = 0.0
	var height = 0.0
	
	// Designated. 모든 속성을 초기화한 다음에, 마지막에 상위구현을 호출하는 구조이다. Delegate Up.
	init(n: String, w: Double, h: Double) {
		width = w
		height = h
		super.init(name: n)
	}
	
	// Delegate Accross.
	convenience init(value: Double) {
		self.init(n: "rect", w: value, h: value)
	}
}

// 속성을 따로 지정하지 않아서, Rectangle의 init이 자동 상속된다.
class Square: Rectangle {
	convenience init(value: Double) {
		self.init(n: "square", w: value, h: value) // 상속받은 init.
	}
	
	convenience init() {
		self.init(value: 0.0)
	}
}









