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
 # Value Types and Reference Types
 ![val-ref](val-ref.png)
 */

// 좌표를 저장하는, 구조체와 클래스를 선언하자.

// Struct
struct PositionValue {
	var x = 0.0
	var y = 0.0
}

// Class
class PositionObject {
	var x = 0.0
	var y = 0.0
}

// cf) 속성은 선언과 동시에 기본값을 저장한다. -> 파라미터가 없는 기본 생성자가 제공된다.(Defaut Initialier)
var v = PositionValue() // 0, 0
var o = PositionObject() // 0, 0

var v2 = v // 0, 0
var o2 = o // 0, 0

v2.x = 12
v2.y = 34
v // 0, 0
v2 // 12, 34
// v2에 저장되어있는 값은, v에 복사된 값을 갖는 복사본이다. v2의 값을 바꾸어도 v에 영향을 주지 않는다.

o2.x = 12
o2.y = 34
o // 12, 34
o2 // 12, 34
// o2, o에도 바뀐값이 저장되어있다. 클래스는 새로운 복사본을 생성하지 않고 원본을 전달한다. 참조를 전달한다.
