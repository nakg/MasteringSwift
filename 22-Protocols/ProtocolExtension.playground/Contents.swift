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
 # Protocol Extension
 */


protocol Figure {
    var name: String { get }
    func draw()
}

// Protocol을 채용한 형식이, Equatable을 채용한 경우에만 추가되게 where절 추가.
extension Figure where Self: Equatable {
	func draw() {
		print("draw figure")
	}
}

struct Rectangle: Figure, Equatable {
	var name = ""
	
	// extension에 프로토콜의 기본구현을 추가했으므로, 굳이 draw를 구현하지 않아도 자동으로 생성된다. 여기서 굳이 draw를 추가하면, extension이 무시되고 형식에서 직접 구현한 멤버가 더 우선순위를 갖는다. 단, extension의 where절 까지 충족시켜야 한다.
	func draw() {
		print("draw Ractangle") // extension이 아닌 이게 출력됨.
	}
}

let r = Rectangle()
r.draw()
