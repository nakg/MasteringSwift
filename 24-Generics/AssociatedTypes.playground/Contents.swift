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
# Associated Types
![associatedtype](associatedtype.png)
*/

protocol QueueCompatible {
	associatedtype Element: Equatable // 연관형식을 Equatable 채용한 형식으로 제한.
	func enqueue(value: Element)
	func dequeue() -> Element?
}

class IntergerQueue: QueueCompatible {
	typealias Element = Int
	
	func enqueue(value: Int) {
		<#code#>
	}
	func dequeue() -> Int? {
		<#code#>
	}
}

class DoubleQueue: QueueCompatible {
	// 연관형식을 생략해도, 알아서 추론을 한다. 실제로도 거의 생략함.
	func enqueue(value: Double) {
		<#code#>
	}
	func dequeue() -> Double? {
		return 0
	}
}







