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
 # Value Types & Reference Types
 */

struct SizeValue {
   var width = 0.0
   var height = 0.0
}

var value = SizeValue() // 1.스택에 메모리 공간이 생성되고, 여기에 0.0 값이 저장된다. 그리고 value변수와 메모리 공간이 연결된다.


var value2 = value // 2. 값 형식에서는 값이 복사된다. value instance의 복사본이, 새로운 메모리에 복사되고, 이 메모리가 value2 인스턴스와 연결된다. 값은 동일하지만 개별 인스턴스이다.
value2.width = 1.0
value2.height = 2.0 // 3. value2와 연결된 인스턴스가 새로운 값으로 변경된다.

value // 0, 0
value2 // 1, 2


class SizeObject {
   var width = 0.0
   var height = 0.0
}

var object = SizeObject() // 4. 클래스로 인스턴스를 생성하면, 스택과 힙에 새로운 공간이 생성된다. 힙에는 인스턴스가 저장되고, 스택에는 힙 메모리 주소가 저장된다. 그리고 object 변수는 스택에 생성된 메모리와 연결된다. 인스턴스에 바로 접근할 수 없고 항상 스택을 거친다.

var object2 = object // 5. 스택에 새로운 메모리 공간이 형성되고, 여기에는 바로전에 스택에 저장된 주소가 그대로 저장된다. 힙에는 새로운 메모리 공간이 생성되거나 인스턴스가 복사되지는 않는다. 어떤 변수를 통해 접근하더라도, 결과적으로 힙에있는 동일한 인스턴스에 접근하게 된다.

object2.width = 1.0
object2.height = 2.0

object // 1, 2
object2 // 1, 2



let v = SizeValue()
// v.width = 1.0 -> 불가. 속성에 저장된 값을 바꾸는 것도 불가능하다. 스택의 메모리 자체를 잠금해버린다.

let o = SizeObject()
o.width = 1.0
o.height = 2.0
//












