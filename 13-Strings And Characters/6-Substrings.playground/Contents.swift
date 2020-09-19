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
 # Substring
 */

let str = "Hello, Swift"
let l = str.lowercased() // 소문자로만들고, 상수에 저장.

var first = str.prefix(1)// prefix메서드로 첫번째 문자 추출.
first // type이 String.SubSequence. SubSequence는 SubString의 typealias이다. 똑같음.

first.insert("!", at: first.endIndex) // 원본문자열을 바꾸는 메서드. 이 시점에 새로운 메모리가 생성된다. 같은 메모리를 여전히 원본과 공유하고 있다면, str도 바뀌겠지만, 그렇지 않다.
str
first

let newStr = String(str.prefix(1))


// 문자열에서 특정범위를 추출해보자. 범위 지정시에도, 정수 Index가 아닌 String.Index를 사용해야한다.


let s = str[..<str.index(str.startIndex, offsetBy: 2)] // He

str[str.index(str.startIndex, offsetBy: 2)...] // llo, Swift

let lower = str.index(str.startIndex, offsetBy: 2)
let upper = str.index(str.startIndex, offsetBy: 5)
str[lower ... upper] // llo,

























