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
 # Structure
 ![Struct](struct.png)
 */

struct Person {
	// property.
	var name: String
	var age: Int
	
	// 메서드는 함수와 동일한 방식.
	func speak() {
		print("Hello")
	}
}
// Person 구조체는 설계도일 뿐이다. 바로 상품이 만들어지는건 아니다. 생성까진 안함.

// 인스턴스를 생성해보자.
let p = Person(name: "Steve", age: 50) // 새로운 메모리공간이 만들어진다. 인스턴스 생성.

// 속성에 접근해보자.
let name = "Paul"
name // 이건 그냥 상수의 접근. 구조체의 name 과는 접근법도 구조도 다르다.

p.name // name에 접근.
p.age // age에 접근.

// 메서드를 호출해보자.
p.speak()

// -> 함수는 이름만으로 호출한다. 반면, 메서드는 인스턴스 이름을 통해 호출한다.
















//: [Next](@next)
