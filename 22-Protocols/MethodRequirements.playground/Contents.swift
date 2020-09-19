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
 # Method Requirements
 ![method](method.png)
 */
protocol Ressettable {
	mutating func reset()
	static func reset_static()
}

class Size: Ressettable {
	var width = 0.0
	var height = 0.0
	
	func reset() {
		width = 0.0
		height = 0.0
	}
	
	// overridng을 허용함과 동시에, 프로토콜의 요구사항을 충족시킴.
	class func reset_static() {
		
	}
}

// 만약, 프로토콜에서 mutating이 없으면 아래 코드를 구현할 수 없다.
struct Size2: Ressettable {
	var width = 0.0
	var height = 0.0
	
	mutating func reset() {
		width = 0.0
		height = 0.0
	}
	
	static func reset_static() {
		
	}
}


