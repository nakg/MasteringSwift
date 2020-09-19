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
 # Initializer Syntax
 ![init](init.png)
 */
let str = "123"
let num = Int(str) // Int 생성자 문법. 파라미터로 전달된 문자를 숫자로 바꾸어서, 새로운 인스턴스로 리턴한다. 불가하면 nil을 리턴한다. 이는 메서드와 문법적으로 유사하다.


class Position {
	var x: Double
	var y: Double
	
	// 생성자는 init으로 시작. 0으로 초기화할땐 파라미터가 필요없다.
	init() {
		// 모든 속성을 초기화하고 생성자를 종료해야한다.
		x = 0.0
		y = 0.0
	}
	
	// 파라미터를 받는 생성자 호출.
	init(value: Double) {
		x = value
		y = value
	}
}

// - 생성자는 속성 초기화가 가장 중요하고 유일한 목적이다. 생성자 실행이 종료되는 시점에는, 모든 속성의 초기값이 저장되어 있어야한다! 중요!

let a = Position() // 파라미터 없는 생성자로 인스턴스 생성.
a.x // 0
a.y // 0

let b = Position(value: 100)
a.x // 100
a.y // 100

// - 열거형, 구조체, 클래스는 모두 설계도이다. 설계도를 따라 인스턴스를 만들기 위해서는 초기화 과정이 반드시 필요하다. 생성자를 호출하면 초기화가 시작되고, 생성자 실행이 완료되면 모든 속성이 초기화된다. 에러없이 초기화가 완료되면 인스턴스가 생성된다.











/*:
 ![call-init](call-init.png)
 */















