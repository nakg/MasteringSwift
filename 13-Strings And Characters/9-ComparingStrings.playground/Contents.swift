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
 # Comparing Strings
 */

let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA // false
largeA != smallA // true

largeA < smallA // true
largeA < b // true
smallA < b // false

// 메서드로 비교하기. 리턴형이, BOOL이 아니다.
largeA.compare(smallA) == .orderedSame // 같은지 비교. 대소문자 비교. false.
largeA.caseInsensitiveCompare(smallA) == .orderedSame // 대소문자 구분 안하고 비교. true.
largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame // 위와 동일

// 접두어의 비교.
let str = "Hello, Swift Programming!"
let prefix = "Hello"
let suffix = "Programming"

str.hasPrefix(prefix) // 앞부분이 동일하면 true. true 리턴.
str.hasSuffix(suffix) // 뒷부분이 동일하면 true. 여기선 !가 있어서 false.

// compare와 달리, 접두어 접미어 비교는 대소문자 비교 옵션을 제공하지 않는다. 따라서, 대소문자 구분하지 않아야 한다면, 통짜바리와 접두어 접미어를 모두 소문자화 혹은 대문자화 해서 비교해야한다.
str.lowercased().hasPrefix(prefix.lowercased())












