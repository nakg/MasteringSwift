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
 # Function Types
 ![ftype](ftype.png)
 */
// 파라미터가 없는 함수.
func sayHello() {
	print("Hello, Swift")
}

let f1 = sayHello // 괄호를 넣으면, 함수를 호출하는 것이다. 함수를 넣는 방법은 함수 표기법을 넣는 것이다. 함수는 일급함수이고, 변수나 상수에 저장할 수 있다.
f1()


// 파라미터가 있는 함수.
func printHello(with name: String) {
	print("hello, \(name)")
}
let f2: (String)->() = printHello(with:)
let f3 = printHello(with:)

f3("World") // 상수에 담아서 함수를 호출할 때에는, argument label을 표시하지 않는다. function type에는 파라미터형식과 리턴형만 포함된다. argument label에 대한 정보는 포함되지 않는다. argument label을 쓰면 에러가 발생된다.


// 파라미터 추가.
func add(a: Int, b: Int) -> Int {
	return a + b
}

var f4: (Int, Int) -> Int = add(a:b:)
f4(1, 2) // argumentlabel 안쓴다!


// wild card 추가.
func add(_ a: Int, with b: Int) -> Int {
	return a + b
}

f4 = add(_:with:)


func swapNumbers(_ a: inout Int, _ b: inout Int) {
	
}
let f5 = swapNumbers(_:_:)
f5

func sum(of numbers: Int...) {
	
}
let f6 = sum(of:)
f6




func add(_ a: Int, _ b: Int) -> Int {
	return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
	return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
	return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
	return a / b
}

typealias ArithmeticFunction = (Int, Int) -> Int
func selectFunction(from op: String) -> ArithmeticFunction? {
	switch op {
	case "+":
		return add(_:_:)
	case "*":
		return multiply(_:_:)
	case "-":
		return subtract(_:_:)
	case "/":
		return divide(_:_:)
	default:
		return nil
	}
}

let af = selectFunction(from: "+")
af?(1, 2) // 함수자체가 옵셔널로 지정되어 있다.
selectFunction(from: "*")?(12, 34)


// 첫번째가 리턴화살표고, 그뒤에는 모두 형식에 포함되어있는 화살표이다.
// 펑션타입을 직접 지정하면 코드의 가독성이 떨어진다. typealias
