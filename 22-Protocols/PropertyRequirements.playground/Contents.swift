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
 # Property Requirements
 ![property](property.png)
 */

protocol Figure {
	var name: String { get set } // get set 모두 최소한 포함해야함.
}

// 읽기만 가능해도 요구사항 충족.
struct Rectangle2: Figure {
	var name: String
}

struct Rectangle: Figure {
//	let name = "Rect" // 상수 저장속성은 set을 커버하지 못해서 사용 못함. set 없으면 let으로도 var name: 을 받을 수 있다.
	var name = "Rect"
}

struct Triangle: Figure {
	var name = "Triangle"
}

class Circle: Figure {
	var name: String {
		get {
			return "Circle"
		}
		set {
			
		}
	}
}





