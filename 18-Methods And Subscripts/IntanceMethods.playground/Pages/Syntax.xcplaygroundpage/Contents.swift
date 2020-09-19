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
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */
class Sample {
	var data = 0
	static var sharedData = 123
	
	func doSomething() {
		print(data) // 데이터 속성에 접근.
		Sample.sharedData // 타입멤버로 접근할 때에는, 형식이름을 통하여 접근한다.
	}
	
	func call() {
		doSomething() // 인스턴스 멤버에서, 다른 인스턴스 멤버에 접근. self 빼도 된다.
	}
}

let a = Sample()
a.data
a.doSomething()
a.call()
// 메서드는 반드시 인스턴스 이름을 통하여 호출하여야 한다.


struct Size {
	var width = 0.0
	var height = 0.0
	
	mutating func enlarge() { // 구조체에서는, 인스턴스 속성 바꾸려면 mutating으로 메서드 선언해야함.
		width += 1.0
		height += 1.0
	}
}

var s = Size() // 값형식에서 인스턴스의 가변성은, 멤버의 가변성에 영향을 준다. 속성이 변수저장속성이더라도 값을 바꿀 수 없다. var로 해야함.
s.enlarge()
s.width






















