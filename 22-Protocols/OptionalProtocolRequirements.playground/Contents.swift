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
 # Optional Protocol Requirements
 ![optional](optional.png)
 */
// draw 멤버를 제외하고 다 옵셔널로 만들어보자. 원래는 프로토콜에 선언된 모든 멤버를 선언해야 했다.
@objc protocol Drawable {
   @objc optional var strokeWidth: Double { get set }
   @objc optional var strokeColor: UIColor { get set }
   func draw()
   @objc optional func reset()
}

class Rectangle: Drawable {
	func draw() {
		
	}
}

let r: Drawable = Rectangle() // 프로토콜 형식으로 저장.
r.draw()
r.strokeColor // optional type. nil.
r.strokeWidth // optional type. nil.
r.reset?() // 선택적 메서드는, 선택적 속성과 마찬가지로 옵셔널 형식으로 대체된다. () 앞에 ?. 옵셔널 체이닝 연산자의 추가. nil.





