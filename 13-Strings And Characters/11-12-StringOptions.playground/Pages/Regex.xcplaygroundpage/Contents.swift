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
 # Regular Expression
 */
let emailPattern = "([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}"
let emailAddress = "user@example.com"

if let _ = emailAddress.range(of: emailPattern) { // 문자열 자체를 비교. 바인딩 실패.
	print("found")
} else {
	print("not found")
}

// 첫번째 파라미터를 정규식으로 생각하고 처리한다.
if let _ = emailAddress.range(of: emailPattern, options: [.regularExpression]) {
	print("found")
} else {
	print("not found")
}

// range 메서드는 이를 포함하기만 하면 되는 구조이다. 가령 이메일 뒤에 이상한 이모티콘 들어가도 이게 허용됨. range범위가 전체범위와 같은지 확인하여야 한다.
if let range = emailAddress.range(of: emailPattern, options: [.regularExpression]), (range.lowerBound, range.upperBound) == (emailAddress.startIndex, emailAddress.endIndex) {
	print("found")
} else {
	print("not found")
}














//: [Next](@next)
