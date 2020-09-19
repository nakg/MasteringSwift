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

import Foundation

/*:
 # Protocol Types
 */

protocol Resettable {
	func reset()
}

class Size: Resettable {
	var width = 0.0
	var height = 0.0
	
	func reset() {
		width = 0.0
		height = 0.0
	}
}

let s = Size() // Type: Size

let r: Resettable = Size() // protocol은 형식으로 사용할 수 있고, Reseetable 프로토콜을 채용하고있는 Size instance는 Resettable로 저장할 수 있다. -> Upcasting과 유사. 해당 프로토콜에 선언되어있는 멤버만 사용할 수 있다. width나 height는 접근 불가.
r.reset()

// 값 형식은 상속이 불가하지만, 프로토콜을 활용하면 상속과 유사하게 구현이 가능하다.








//: [Next](@next)
