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
 # Extension
 ![syntax](extension.png)
 ![syntax2](extension-protocol.png)
 */

struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size {
	// computedProperty 추가.
	var area: Double {
		return width * height // extension에서 기존 속성에 접근하는 것은 가능하다.
	}
}

let s = Size()
s.width
s.height
s.area

// protocol 채용. - extension을 활용해서, protocol 구현을 추가할 수 있다.
extension Size: Equatable {
	// 연산자 메서드 구현.
	public static func == (lhs: Size, rhs: Size) -> Bool {
		return lhs.width == rhs.width && lhs.height == rhs.height
	}
}
