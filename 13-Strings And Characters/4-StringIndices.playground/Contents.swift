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
 # String Indices
 */

let str = "Swift"

let firstCh = str[str.startIndex]
print(firstCh)

let lastCharIndex = str.index(before: str.endIndex)
let lastCh = str[lastCharIndex]
print(lastCh)

// 2번째 문자를 출력해보자.
let secondCharIndex = str.index(after: str.startIndex)
let secondCh = str[secondCharIndex]
print(secondCh)

// 3번째 문자를 출력해보자.
var thirdCharIndex = str.index(str.startIndex, offsetBy: 2) // startIndex에서 2개의 Index만큼 이동한 새로운 Index.
var thirdCh = str[thirdCharIndex]
print(thirdCh)

// 같은 인덱스를 EndIndex를 기준으로 구해보자.
thirdCharIndex = str.index(str.endIndex, offsetBy: -3)
thirdCh = str[thirdCharIndex]
print(thirdCh)

// index는 위험하다. if문으로 확인하기. 정수 인덱스는 아니지만 크기비교는 가능하다.
if thirdCharIndex < str.endIndex && thirdCharIndex >= str.startIndex {
	
}

// 정수 인덱스를 사용안하는 이유는, 유니코드와 독립적인 형태로 String을 사용하기 위해서이다. 










