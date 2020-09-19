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
 # Tuple Matching
 */

let resolution = (3840.0, 2160.0)

if resolution.0 == 3840 && resolution.1 == 2160 {
	print("4K")
}

// switch문은 tuple matching을 지원한다. 이걸 이용해서 위 코드의 단순화를 해보자. wild card와 value binding을 쓰면 더 다양하고 쉽게 구현 가능.
switch resolution {
case (3840, 2160):
	print("4K")
default:
	break
}

// 1. 너비의 범위 구현
// 2. 1080p 케이스 추가.
// 3. value binding으로, 16:9를 찾아보자.
switch resolution {
case let(w, h) where w / h == 16.0 / 9.0:
	print("16:9")
case (_, 1080):
	print("1080p")
case (3840...4096, 2160):
	print("4K")
default:
	break
}
























