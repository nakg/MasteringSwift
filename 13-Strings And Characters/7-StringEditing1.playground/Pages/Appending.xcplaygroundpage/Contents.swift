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
 # Appending Strings and Characters
 */

// 문자열 뒤에 새로운 문자열 연결하는 메서드. - Append. void를 리턴한다. 대상 문자열을 직접 변경한다. 상수를 허용하지 않는다.
//var str = "Hello"
//str.append(", ")
//str
//
//// Appending 메서드는, String을 리턴한다. 대상 문자열을 직접 변경하지는 않는다.
//let s = str.appending("Swift")
//str
//s
//
//// 원하는 포맷으로 구성된, 문자열을 연결할 때 많이 사용한다.
//"File size is ".appendingFormat("%.1f", 12.3456)


var str = "Hello Swift"
// insert. 하나의 캐릭터를 특정 인덱스에 삽입.
str.insert(",", at: str.index(str.startIndex, offsetBy: 5)) // ing, ed없다. 원본을 변경한다.

// 파라미터로 입력한 값을 갖는 index를 검색한 후, 가장먼저 걸린것의 index를 리턴한다.
if let sIndex = str.firstIndex(of: "S") {
	str.insert(contentsOf: "Awesome", at: sIndex)
}

str.insert(" ", at: str.index(str.endIndex, offsetBy: -5))
str






//: [Next](@next)
