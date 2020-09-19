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
 # Initializer Requirements
 ![init](init.png)
 */

protocol Figure {
	var name: String { get }
	init(n: String)
}

struct Rectangle: Figure {
	var name: String // memberwise init이 자동구현이 되므로, 만약 protocol의 init이 init(name: String)이었다면 저절로 요구사항을 충족한다.
	
	init(n: String) {
		name = n
	}
}

class Circle: Figure {
	var name: String // memberwise init이 자동구현이 되므로, 만약 protocol의 init이 init(name: String)이었다면 저절로 요구사항을 충족한다.
	
	// class는 상속을 고려해야하고, 모든 서브클래스에서 프로토콜의 요구사항을 충족시켜야 한다. 따라서, 클래스에서는 프로토콜의 생성자를 required로 만들어야한다.
	required init(n: String) {
		name = n
	}
}

// final 클래스는 더이상 상속되지 않기 때문에, required 안해도 된다.
final class Triangle: Figure {
	var name: String // memberwise init이 자동구현이 되므로, 만약 protocol의 init이 init(name: String)이었다면 저절로 요구사항을 충족한다.
	
	init(n: String) {
		name = n
	}
}

class Oval: Circle {
	var prop: Int
	// 이걸론, 프로토콜을 만족 못시킴.
	init() {
		prop = 0
		super.init(n: "Oval")
	}
	// 요구사항을 충족시키기 위해서, convenience로 해도 상관 없다.
	required convenience init(n: String) {
		self.init()
	}
}


protocol Grayscale {
	init(white: Double)
}

struct Color: Grayscale {
	
	// protocol에서는 non-optional 인스턴스를 생성하는 생성자를 만들었다. 따라서, 여기서 init?로 인스턴스를 생성하는것은 불가하다.
//	init?(white: Double) {
//
//	}
	
	// 요구사항은 충족, 런타임에 실패하면 크래쉬 발생.
	init!(white: Double) {
		
	}
}

protocol Grayscale2 {
	init?(white: Double) // failable init을 프로토콜에서 생성하면, non fialable과 ?, ! 모두 형식에서 사용할 수 있다.
}

struct Color2: Grayscale2 {
	init?(white: Double) {
		
	}
}

