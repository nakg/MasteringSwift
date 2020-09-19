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
 # Initialization
 
 ## Default Initializer
 */
// 1. 선언과 동시에 기본값 저장.
class Position {
	var x = 0.0 // 선언과 동시에 초기화
	var y = 0.0
	var z: Double? = nil
}

let p = Position()








/*:
 ## Initializer Syntax
 ![initializer](initializer.png)
 ![call](call.png)
 */

class SizeObj {
	var width = 0.0
	var height = 0.0
	
	init(width: Double, height: Double) {
		self.width = width
		self.height = height
	}
	convenience init(value: Double) {
//		width = value
//		height = value
		self.init(width: value, height: value)
	}
}
// 초기화코드에서는 가능한 중복된 코드를 제거해야하고, 차라리 다른 initializer를 호출하는게 낫다.
// 초기화 코드에서 다른 초기화 코드를 이용하는 것. -> Initializer Delegation. Convenience를 추가해야한다.
// init은 오버로딩을 지원해~ 이름과 리턴형이 없기 때문에 파라미터의 수와 자료형, argument label을 보고 구분한다.
// convenience와 같은, 다양한 initializer를 오버로딩 선에서 구현해야함. 동일하게는 못쓴다.









/*:
 ## Memberwise Initializer
 */
struct SizeValue {
	var width = 0.0
	var height = 0.0
}

let s = SizeValue() // default initializer
SizeValue(width: 1.2, height: 3.4) // Struct는 모든 property를 파라미터로 받는, 디폴트 initializer를 사용한다. -> Memberwise Initializer



