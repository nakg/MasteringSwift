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
 # Generic Types
 ![generic-type](generic-type.png)
 */

struct Color<T> {
	var red: T
	var green: T
	var blue: T
}

var c = Color(red: 128, green: 80, blue: 200)
c // Color<Int> Type. -> 이제 c는 Int만 받는다. Double 못넣음. Double로 하려면, 다른 변수 선언해야함.

let d: Color = Color(red: 128.0, green: 80.0, blue: 200.0) // Color라고만 선언해도, Type Parameter는 자동 추론이 된다.

let e: Color<Int> // 선언만 하려면, 추론이 불가하므로 <Type> 까지 넣어줘야한다.

let arr: Array<Int> // Array는 다양한 형식을 요소들로 받기위해, Generic Type으로 선언되어 있다.
let dict: Dictionary<String, Double>

// Type Parameter는 형식에서 설정한 것을 그대로 가져간다. extension에서 재설정이 불가하다. 그대로 T 따라감. 조건절 추가가능. T: FixedWidthInteger 같은 것도 가능.
extension Color where T == Int {
	func getComponents() -> [T] {
		return [red, green, blue]
	}
}

let intColor = Color(red: 1, green: 2, blue: 3)
intColor.getComponents() // [1, 2, 3]. Type Parameter가 Int로 추론된다.

let dblColor = Color(red: 1.0, green: 2.0, blue: 3.0)
dblColor.getComponents() // error
