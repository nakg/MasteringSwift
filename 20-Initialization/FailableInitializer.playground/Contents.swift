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
# Failable Initializer
![failable](failable.png)
*/

struct Position {
	let x: Double
	let y: Double
	
	init?(x: Double, y: Double) {
		guard x >= 0.0, y >= 0.0 else { return nil } // nil을 리턴하는 것은, 초기화에 실패했고 초기화를 종료한다는 뜻이다. nil값 자체를 리턴하는게 아닌. init은 return이 없지..
		
		self.x = x
		self.y = y
	}
	
	init!(value: Double) {
		guard value >= 0.0 else { return nil }
		
		self.x = value
		self.y = value
	}
}

var a = Position(x: 12, y: 34)
a // type : Position?
a?.x
var b = Position(x: -12, y: 0)
b // nil. 초기화가 중단되고 nil이 리턴.

var c = Position(value: 12)
c // nil. type : Position?
c?.x // 알아서 옵셔널이 된다..
var d: Position = Position(value: 12)
d // Position. type: Position
d.x // 타입을 명시하여, 옵셔널이 안된다.

var e = Position(value: -12)
e // nil.
e?.x
var f: Position = Position(value: -12)
// -> crash 발생. iuo가 생성된 인스턴스를 강제 추출한다. nil의 강제추출 에러.

// - failable은 초기화 실패했을 때 크래쉬 발생하는 것을 막기 위해서여서, !는 맞지 않다. 주로 ? 쓴다.

// cf) failable init은 overloading은 불가하다. 같은거로 인식해버림.

// nonfailable init은, 컴파일타임에 결과가 나와야 하기에 !있는 failable init만 호출이 가능하다.(초기화실패시 크래쉬 발생하므로 좋진 않다.) 반대로 failable init은 failable nonfailable 안가리고 호출 가능하다. 상속관계에서도 superclass의 designated init이 failable인지 아닌지 상관 안한다. overriding도 서브클래스에서 fail형태로 nonfail로 오버라이딩 해도 상관없다. 다만, 상위구현을 호출할 때 강제추출 써야한다.
