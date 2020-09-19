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

import Foundation

/*:
 # Protocol Composition
 ![composition](composition.png)
 */

protocol Resettable {
   func reset()
}

protocol Printable {
   func printValue()
}

class Size: Resettable, Printable {
   var width = 0.0
   var height = 0.0
   
   func reset() {
      width = 0.0
      height = 0.0
   }
   
   func printValue() {
      print(width, height)
   }
}

class Circle: Resettable {
   var radius = 0.0
   
   func reset() {
      radius = 0.0
   }
}

class Oval: Circle {
   
}

let r: Resettable = Size()
let p: Printable = Size()

// 두 프로토콜을 모두 충족시키는 프로토콜을 저장시켜보자. -> Protocol Composition
var rp: Resettable & Printable = Size() // Size 클래스가 두 프로토콜을 모두 채용하기에 이게 가능하다.
// rp = Circle() // -> rp는 두 프로토콜을 모두 채용한 인스턴스만 저장할 수 있다.



/*:
 ![composition2](composition2.png)
 */

var cr: Circle & Resettable = Circle() // Class X Protocol
cr = Oval() // Circle 상속받고, Circle 통해서 Reseetable도 채택한다. 가능.
















