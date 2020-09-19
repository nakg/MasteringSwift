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
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */

class Circle {
	static let pi = 3.14
	var radius = 0.0

	// 인스턴스 메서드.
	func getArea() -> Double {
		return radius * radius * Circle.pi
	}
	
	// 타입 메서드.
	class func printPi() {
		print(pi) // pi 속성에 직접 접근한다. 이처럼 타입 속성엔 직접 접근하지만, 인스턴스 속성엔 접근할 수 없다.
	}
}
Circle.printPi() // 타입메서드 호출.

// Circle 클래스를 상속한, StrokeCircle
class StrokeCircle: Circle {
	// static 키워드로 선언한 타입 메서드를, 서브클래스에서 오바리이드 할 수 없다!! 인스턴스 메서드에도 같은 규칙이 적용된다.
	override static func printPi() {
		print(pi)
	}
}

















