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
 # Replacing Substrings
 */

var str = "Hello, Objective-C"

// 무엇을 고를지 확실히 알면, range of를 사용하는것이 편하다.
if let range = str.range(of: "Objective-C") {
	str.replaceSubrange(range, with: "Swift")
}
str

if let range = str.range(of: "Hello") {
	let s = str.replacingCharacters(in: range, with: "Hi")
	s
	str
}

// 바로 대체하고, 리턴형을 남김.
var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")
s

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift") // 문자열비교는 대소문자를 비교하기에, 이는 먹히지 않는다.
s
// 대소문자를 구분하지 않으면서 해보자.
s = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive])
s
//: [Next](@next)
