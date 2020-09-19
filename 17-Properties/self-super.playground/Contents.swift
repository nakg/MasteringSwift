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
# self
![self](self.png)
*/

//class Size {
//	var width = 0.0
//	var height = 0.0
//
//	// 두 속성값을 곱한 값을 리턴하는 메서드.
//	func calcArea() -> Double {
//		return self.width * self.height // 정식문법. 사실, self 생략 가능.
//	}
//
//	// 계산속성 추가하고, 메서드가 리턴하는값을 그대로 리턴해보자.
//	var area: Double {
//		return self.calcArea() // self 생략 가능.
//	}
//
//	// 너비와 높이를 업데이트하는 메서드.
//	func update(width: Double, height: Double) {
//		self.width = width // 인스턴스의 속성은 self. 붙여준다. 메서드의 파라미터 자체는 width로 쓴다. self 생략 불가.
//		self.height = height
//	}
//
//	// 클로져 내부에서 속성에 접근하기.
//	func doSomething() {
//		let c = { self.width * self.height } // closure 내부에서 인스턴스 멤버에 접근하려면, self를 캡쳐해야한다. 따라서, 명시적으로 적어주어야 한다.
//	}
//
//	static let unit = ""
//	static func doSomething() {
//		// 형식 메서드에서 인스턴스 속성에 직접 접근하는 것은 불가능하다. 형식메서드에서 self는 형식 자체를 나타낸다.
//		self.unit // 둘다 type 멤버로 접근이된다.
//		// self.width // 접근이 불가하다.
//	}
//}

// 1. self는 현재 인스턴스에 접근하기 위해 사용하는 특별한 속성이다. 2. self를 타입멤버에서 사용하면 인스턴스가아닌 형식 자체를 나타낸다.



struct Size {
	var width = 0.0
	var height = 0.0
	
	// 메서드 구현. 개별 속성을 하나씩 초기화하기.
	mutating func reset(value: Double) {
		self = Size(width: value, height: value) // 인스턴스가 새로운 인스턴스로 교체된다. 이 패턴은 생성자를 통해 초기화할수 있다는 장점. 클래스에서는 사용할수 없는 방식.
	}
}













/*:
# super
![super](super.png)
*/
// super는 클래스에서만 사용한다. 슈퍼클래스에 접근할 때 사용한다.
