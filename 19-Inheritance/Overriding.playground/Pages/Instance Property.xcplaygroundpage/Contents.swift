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
# Overriding
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
	var radius = 0.0 // 읽기, 쓰기 다 가능한 property
	
	// 읽기 전용 property
	var diameter: Double {
		return radius * 2
	}
	
	// override.
	override func draw() {
		super.draw() // figure에있는 draw를 실행한 후에, 이 뒤를 사용한다. 이걸 빼면 완전히 새로운 오버라이딩.
		print("😁")
	}
}

let c = Circle(name: "Circle")
c.draw()

// property의 subclassing - 1. 계산속성 사용. 2. property observer 사용.
class Oval: Circle {
	// 계산속성으로 overriding - 읽기, 쓰기가 가능한 propery에 대한 overridnig은, 반드시 읽기 쓰기가 모두 가능하게 overriding 해야한다.
	override var radius: Double {
		willSet {
			print(newValue)
		}
		didSet {
			print(oldValue)
		}
	}
	
	// 읽기 전용 속성을, 읽기,쓰기 모두 가능하게 overriding하는 것은 허용된다. 단, 해당 super class의 프로퍼티는 읽기 전용이므로, 다른 프로퍼티에 set을 해야한다.
	override var diameter: Double {
		get {
			return super.diameter
		}
		set {
			super.radius = newValue / 2 // 꼭, super class에 일치하는 프로퍼티에 값을 전달할 필요는 없다.
		}
	}
}

// overridng에서 self쓰면 재귀호출 반복되므로 조심하자.

let o = Oval(name: "Oval")
o.radius
o.draw()












