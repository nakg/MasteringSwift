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
 # Finding Substrings
 */

var str = "Hello, Swift"

// 위 문자열에서 Swift라는 문자열이 포함되어있는지 확인하기. - contains : 파라미터로 전달하는 문자열을 포함한다면, true.
str.contains("Swift")
str.lowercased().contains("swift") // 대소문자 무시비교.

// 범위를 검색해보자. 찾은다음 해당 문자열의 범위를 리턴받기. 옵셔널이라 없으면 nil을 리턴.
str.range(of: "Swift")
str.range(of: "swift", options: [.caseInsensitive]) // 메서드에 따라 옵션을 넣어줄 수가 있다.

// 공통된 접두어를 검색해보자. hasPrefix는 두 문자열이 동일한 접두어를 가지고 있으면 Boolean을 리턴한다. 여기서는 공통된 문자열만 새롭게 리턴해준다.
str = "Hello, Swift"
let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2) // Hello, 출력

str.commonPrefix(with: str3) // 빈문자열 리턴. 공통된 부분이 없다.
str.commonPrefix(with: str3, options: [.caseInsensitive]) // Hello
str3.commonPrefix(with: str, options: [.caseInsensitive]) // hello,
// 공통된 접두어를 리턴할 때, 파라미터가아닌 메소드 호출한 주체의 접두어를 리턴한다. 따라서 대문자 Hello가 나옴.


























