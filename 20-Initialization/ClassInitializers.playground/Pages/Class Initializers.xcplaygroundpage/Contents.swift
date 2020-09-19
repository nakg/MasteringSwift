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
 # Designated Initializer
 ![designated](designated.png)

 # Convenience Initializer
 ![convenience](convenience.png)
 */
class Position {
	var x: Double
	var y: Double
	
	// 모든 속성을 초기화 하는, Desginated initialzier 생성.
	init(x: Double, y: Double) {
		self.x = x
		self.y = y
	}
	
	// Convenience initializer는 모든 속성을 초기화 할 필요 없다. 필요한 속성만 초기화 한 후, 클래스 내에 다른 initilizer를 호출하여 나머지 property를 초기화한다.
	convenience init(x: Double) {
		self.init(x: x, y: 0.0)
	}
}

let a = Position(x: 4)
a.x // 4
a.y // 0










//: [Next](@next)

