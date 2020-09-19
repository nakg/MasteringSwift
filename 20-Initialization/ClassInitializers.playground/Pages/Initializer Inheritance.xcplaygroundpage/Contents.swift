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
//: [Previous](@previous)

import Foundation

/*:
# Initializer Inheritance
*/
class Figure {
	var name: String
	
	init(name: String) {
		self.name = name
	}
	
	func draw() {
		print("draw \(name)")
	}
	
	convenience init() {
		self.init(name: "unknown")
	}
}

class Rectangle: Figure {
	var width: Double = 0.0
	var height: Double = 0.0
	
	// designed Initializer : 1. 슈퍼클래스의 designed initializer를 호출해야한다. 2. 상위 구현을 호출하기 전에, 상속받은 name속성에 접근할 수 없다. 현재클래스 외에는 슈퍼클래스에 맡겨서 초기화해야한다!
	init(name: String, width: Double, height: Double) {
//		self.name = name
		self.width = width
		self.height = height
		super.init(name: name)
	}
	
	// 상속받은 initializer를 override 해보겠다.
	override init(name: String) {
		width = 0
		height = 0
		super.init(name: name)
	}
	
	// convenience initializer는 override 개념이 없다. 항상 동일 클래스에서 작업한다.
	convenience init() {
		self.init(name: "unknown")
	}
}











//: [Next](@next)
