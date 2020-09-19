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
 # Defining Protocols
 ![define](define.png)
 ![protocol-inheritance](protocol-inheritance.png)
 */

protocol SomeThing {
	func doSomething() // protocol채용한 형식은, doSomething을 사용해야한다. 프로토콜을 채용한다고 명시적으로 선언도 해야한다.
}




/*:
 # Adopting Protocols
 ![adopting](adopting.png)
 */

struct Size: SomeThing {
	func doSomething() {
		
	}
}





/*:
 # Class-Only Protocols
 ![class-only](class-only.png)
 */
// AnyObject를 상속한 프로토콜은, 참조형에서만 사용할 수 있다. 구조체나 열거형은 사용 불가.
protocol SomethingObject: AnyObject, SomeThing {
	
}

class Object: SomethingObject {
	func doSomething() {
		
	}
}

