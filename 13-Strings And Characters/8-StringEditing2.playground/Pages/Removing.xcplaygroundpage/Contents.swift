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
 # Removing Substrings
 */

var str = "Hello, Awesome Swift!!!"

// !를 삭제해보자.
let lastCharIndex = str.index(before: str.endIndex)
var removed = str.remove(at: lastCharIndex) // 삭제된 문자를, 리턴해준다.
removed

removed = str.removeFirst() // 첫번째 문자를 remove한다. return도 시킴.
removed
str

str.removeFirst(2) // 처음에 있는 2개의 문자를 삭제. 이건 리턴은 안해줌.
str
str.removeLast() // 마지막 문자 삭제하고 리턴.
str.removeLast(2) // 뒤에 2개 삭제. 리턴은 안함.

// Aweseome만 삭제해보자.
if let range = str.range(of: "Awesome") {
	str.removeSubrange(range)
	str
}

str.removeAll() // 문자열에서 모든 문자를 삭제하고, 빈문자열로 만들어준다. 파라미터가 없으면 메모리공간도 함께 삭제된다.
str

// 문자열을 초기화하고, 비슷한길이의 문자열을 다시 저장한다면 메모리공간을 유지하는게 좋다.
str.removeAll(keepingCapacity: true) // 메모리공간은 삭제되지 않음. 불필요한 메모리 오버헤드가 준다.




// drop은 모두 Substring을 return한다. 원본문자열의 메모리를 공유한다.
str = "Hello, Awesome Swift!!!"

var substr = str.dropLast() // 원본 문자열에서, 마지막 문자를 제외한 나머지 모든 문자열을 새로운 문자열로 리턴해준다. 새롭게 리턴된 문자열은 메모리공간이 없고 원본 문자열을 공유한다. Hello, Awesome Swift!!

substr = str.dropLast(3) // 3개 제외한 나머지 공간만 공유.

// drop. 클로져를 받는다. 문자를 순서대로 전달하면서, true일 동안 문자를 삭제한다. false면 남아있는 문자열을 새로운 문자열로 리턴해준다.
substr = str.drop(while: { (ch) -> Bool in
	return ch != ","
})
substr






