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
//: [Previous](@previous)

import Foundation

/*:
 # Collections of Protocol Types
 */


protocol Figure {
   func draw()
}

struct Triangle: Figure {
   func draw() {
      print("draw triangle")
   }
}

class Rectangle: Figure {
   func draw() {
      print("draw rect")
   }
}

struct Circle: Figure {
   var radius = 0.0

   func draw() {
      print("draw circle")
   }
}

let t = Triangle()
let r = Rectangle()
let c = Circle()

let list: [Figure] = [t, r, c] // 모든 인스턴스의 저장. 값인지 객체인지 상관없이 figure로 캐스팅해서 저장한다.
// item은 figure 프로토콜 타입. 여기선 draw만 사용이 가능하다. 업캐스팅 느낌.
for item in list {
	item.draw()
	
	// 값형식의 접근.
	if let c = item as? Circle {
		c.radius
	}
}

// 클래스에서 구현한 업캐스팅과 다운캐스팅을, 상속이 지원되지 않는 값형식에서도 유사하게 구현할 수 있다. 함께 처리하는 것도 가능하다.




